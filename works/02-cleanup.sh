#!/bin/sh

readonly BATCH_POLICY_DIR=environment/batch_policy
kubectl delete -f ${BATCH_POLICY_DIR}/job-whalesay.yaml
