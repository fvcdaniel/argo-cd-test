#!/bin/sh

helm upgrade argo-cd-apps -f envs/production/values.yaml .
