#!/bin/sh

readonly BATCH_POLICY_DIR=environment/batch_policy
mkdir -p ${BATCH_POLICY_DIR}

cat <<EoF > ${BATCH_POLICY_DIR}/job-whalesay.yaml
apiVersion: batch/v1
kind: Job
metadata:
  name: whalesay
spec:
  template:
    spec:
      containers:
      - name: whalesay
        image: docker/whalesay
        command: ["cowsay",  "This is a Kubernetes Job!"]
      restartPolicy: Never
  backoffLimit: 4
EoF
