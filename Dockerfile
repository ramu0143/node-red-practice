FROM nodered/node-red:latest

# Set a working directory for your custom flows
WORKDIR /data

# Copy the flows.json file into the specified directory
COPY flows.json /data/

# Expose the default Node-RED port
EXPOSE 1880

# Use the base image's entrypoint to initialize Node-RED
ENTRYPOINT ["/usr/src/node-red/entrypoint.sh"]

# Pass custom arguments to Node-RED
CMD ["--userDir", "/data"]
