#!/bin/sh

readonly BATCH_POLICY_DIR=environment/batch_policy
kubectl apply -f ${BATCH_POLICY_DIR}/job-whalesay.yaml
