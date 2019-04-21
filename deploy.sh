#!/bin/sh

set -euo pipefail

fly login -t concourse -u test -p test -c http://web:8080

fly set-pipeline \
	--target=concourse \
	--pipeline=branch-pipeline \
	--config=src/branch-pipeline.yml \
	--non-interactive
