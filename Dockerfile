FROM mongo

# Set the working directory
WORKDIR /data/db

# Run MongoDB
CMD ["mongod", "--bind_ip_all"]
