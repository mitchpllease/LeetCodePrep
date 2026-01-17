#!/usr/bin/env bash
set -euo pipefail

PROBLEM_NAME="${1:-}"
TEMPLATE_DIR="templateProblem"

if [[ -z "$PROBLEM_NAME" ]]; then
  echo "Usage: $0 <ProblemName> [TemplateDir]" >&2
  exit 1
fi

DEST_DIR="./$PROBLEM_NAME"
if [[ -e "$DEST_DIR" ]]; then
  echo "Destination already exists: $DEST_DIR" >&2
  exit 1
fi

cp -R "$TEMPLATE_DIR" "$DEST_DIR"

echo "Created: $DEST_DIR"
