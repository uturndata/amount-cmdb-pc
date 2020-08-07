========
gateways
========

The gateways move data external to the k8s cluster into the internal kafka queueue

kafka_publisher.pspy
####################
Psuedocode for translating an HTTP(S) post of raw json to kafka

- creates a minimal http server endpoint
- accepts well-formed json (or returns an error)
- publishes json to internal kafka queue