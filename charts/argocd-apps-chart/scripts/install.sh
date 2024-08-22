#!/bin/sh

helm install argo-cd-apps -f envs/production/values.yaml .
