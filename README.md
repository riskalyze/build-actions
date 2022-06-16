# build-actions

A collection of GitHub actions for build workflows.

## Overview

### `ecr-build-push`

An action that builds and pushes a Dockerfile to the shared ECR registry. 

### `helm-lint`

An action that lints a Helm chart. **Note:** Use `shared-setup` first to allow this action to pull Helm charts from ECR.

### `shared-setup`

An action that logs in to Shared AWS resources (ECR, CodeArtifact) and sets up common build tools (Helm).
