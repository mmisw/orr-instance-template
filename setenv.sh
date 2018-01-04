# Define these environment variables prior to running your ORR instance.

# Configuration directory on the host
export HOST_CONFIG_DIR=$PWD/config

# Host ORR data directory
export ORR_HOST_DATA=$PWD/orr_data

# Host port for the ORR service.
# Make sure it is an unused port on your host.
export ORR_HOST_PORT=9090

# Host Mongo data directory
export MONGO_HOST_DATA=$PWD/mongo_data

# Host port for the Mongo service
# Make sure it is an unused port on your host.
export MONGO_HOST_PORT=27017

# Host port for the AGraph service.
# Make sure it is an unused port on your host.
export AGRAPH_HOST_PORT=10035
