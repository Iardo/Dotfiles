#!/bin/sh
#
# Cockroachdb
# --------
# Architected for the cloud, CockroachDB delivers resilient, consistent, 
# distributed SQL at your scale
# 
# 
# https://www.cockroachlabs.com/
# 
brew install cockroachdb/tap/cockroach


# CREATE A BUNCH OF NODES
# cockroach start \
# --insecure \
# --store=node1 \
# --listen-addr=localhost:26257 \
# --http-addr=localhost:8080 \
# --join=localhost:26257,localhost:26258,localhost:26259 \
# --background

# cockroach start \
# --insecure \
# --store=node2 \
# --listen-addr=localhost:26258 \
# --http-addr=localhost:8081 \
# --join=localhost:26257,localhost:26258,localhost:26259 \
# --background

# cockroach start \
# --insecure \
# --store=node3 \
# --listen-addr=localhost:26259 \
# --http-addr=localhost:8082 \
# --join=localhost:26257,localhost:26258,localhost:26259 \
# --background


# INIT CLUSTER
# cockroach init --insecure --host=localhost:26257
# grep 'node starting' node1/logs/cockroach.log -A 11
