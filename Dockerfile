FROM nodered/node-red:latest

# Copy your custom flows.json to the Node-RED default directory
COPY flows.json /data/

# Expose the default Node-RED port
EXPOSE 1880

# Use the base image's entrypoint to initialize Node-RED
#ENTRYPOINT ["/usr/src/node-red/entrypoint.sh"]
ENTRYPOINT ["./entrypoint.sh"]

# Pass custom arguments to Node-RED
#CMD ["--userDir", "/data"]
