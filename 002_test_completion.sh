#!/bin/bash
set -ex
export OPENAI_API_KEY="${OPENAI_API_KEY:-stub}"
OPENAI_API_BASE='http://localhost:8000' OPENAI_LOG=debug exec openai api completions.create -e davinci -p 'Test' -M 12 -t 0.6 -n 1 "$@"
