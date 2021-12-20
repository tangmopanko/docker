#!/bin/bash
docker buildx build --platform linux/amd64 -t mgmt-tool:v1.2 .
