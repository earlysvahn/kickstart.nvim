#!/usr/bin/env zsh

set -eu
set -o pipefail

WORK_DIR=~/work
ENV_FILE=".env"  # Only use .env, not .env.template
ENVIRONMENTS=(
  "dev:bird-nest-dev:2001"
  "test:bird-nest-test:2002"
  "stage:bird-nest-stage:2003"
  "prod:bird-nest-prod:2004"
)

USE_TARGET_ENV=false
PROJECT=""
TARGET_ENV="test"
NAMESPACE="default"  # Set the default namespace or modify as needed

# Parse args
while [[ $# -gt 0 ]]; do
  case "$1" in
    -t)
      USE_TARGET_ENV=true
      shift
      ;;
    *)
      PROJECT="$1"
      shift
      ;;
  esac
done

# Find project using fzf or fuzzy match
if [[ -z "$PROJECT" ]]; then
  PROJECT=$(fd . "$WORK_DIR" -d1 --type d | fzf --prompt="Select project: ")
  [[ -z "$PROJECT" ]] && { echo "No project selected"; exit 1; }
else
  MATCH=$(fd "$PROJECT" "$WORK_DIR" -d1 --type d)
  if [[ -z "$MATCH" ]]; then
    echo "No match found for '$PROJECT'"
    exit 1
  elif [[ $(echo "$MATCH" | wc -l) -gt 1 ]]; then
    echo "Multiple matches found:"
    echo "$MATCH"
    exit 1
  else
    PROJECT="$MATCH"
  fi
fi

# Debug: Print the selected project path
echo "Selected project: $PROJECT"

# Search for the .env file in the project directory and subdirectories (deepest)
ENV_PATH=$(find "$PROJECT" -name "$ENV_FILE" -type f | sort -r | head -n 1)

# Debug: Print the result of the find search
echo "Searching for .env file in $PROJECT..."
echo "Found environment file at: $ENV_PATH"

# Throw an error if no .env file is found
[[ -z "$ENV_PATH" ]] && { echo "No .env file found in $PROJECT"; exit 1; }

echo "Using environment file from $ENV_PATH"

# Load and parse .env
typeset -A services
while IFS='=' read -r key value; do
  # Only parse valid service URLs like "http://localhost:some_port"
  if [[ "$value" =~ "^http://.*:[0-9]+$" ]]; then
    port="${value##*:}"
    services["$key"]="$port"
  fi
done < <(grep -E '^[A-Z_]+=' "$ENV_PATH")

# Override GCP and DB if target env is set
if $USE_TARGET_ENV; then
  for env in "${ENVIRONMENTS[@]}"; do
    IFS=":" read name gcp_id db_port <<< "$env"
    if [[ "$name" == "$TARGET_ENV" ]]; then
      TARGET_GCP="$gcp_id"
      TARGET_DB_PORT="$db_port"
      break
    fi
  done

  echo "Updating for $TARGET_ENV environment"

  sed -i "s/^GCP_PROJECT_ID=.*/GCP_PROJECT_ID=$TARGET_GCP/" "$ENV_PATH"
  sed -i -E "s/(Port=)[0-9]+;/\1$TARGET_DB_PORT;/" "$ENV_PATH"
fi

# Setup kubectl port-forwards for valid services
for service_name port in "${(kv)services}"; do
  # Skip entries that aren't valid services (like ASPNETCORE_URLS)
  if [[ "$service_name" =~ ^ASPNETCORE_URLS ]]; then
    echo "Skipping non-service key: $service_name"
    continue
  fi

  # Convert service name to lowercase and forward the port
  svc_name=$(echo "$service_name" | tr '[:upper:]' '[:lower:]')
  echo "Forwarding $svc_name on port $port"
  
  # Use the new kubectl port-forward format
  kubectl port-forward --namespace "$NAMESPACE" svc/"$svc_name" "$port":80 &
done

wait

