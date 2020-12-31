#!/bin/sh
set -e

npm run build:package
npm run build:dist

ALL_PACKAGE_VERSION=$(node -p "require('./package/package.json').version")
TAG="v$ALL_PACKAGE_VERSION"
CURRENT_BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
