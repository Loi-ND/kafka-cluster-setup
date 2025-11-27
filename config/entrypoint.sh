#!/bin/bash
export CLUSTER_ID="$(cat /cluster.id)"
export CONTROLLER_1_UUID="$(cat /workspace/kafka/server-uuid/server-1.id)"
export CONTROLLER_2_UUID="$(cat /workspace/kafka/server-uuid/server-2.id)"
export CONTROLLER_3_UUID="$(cat /workspace/kafka/server-uuid/server-3.id)"
kafka-storage.sh format --cluster-id ${CLUSTER_ID} \
                     --initial-controllers "1@kafka-server-1:9094:${CONTROLLER_1_UUID},2@kafka-server-2:9094:${CONTROLLER_2_UUID},3@kafka-server-3:9094:${CONTROLLER_3_UUID}" \
                     --config /workspace/kafka/config/server.properties
kafka-server-start.sh /workspace/kafka/config/server.properties