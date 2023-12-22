FROM mongo

# Create a non-root user
RUN useradd -r -u 1001 -m -d /data/db -s /sbin/nologin -c "Default Application User" default

# Create and set ownership for MongoDB data directory
RUN mkdir -p /data/db && chown -R 1001 /data/db

# Set the working directory
WORKDIR /data/db

# Run MongoDB as the non-root user
USER 1001

# Command to start MongoDB
CMD ["mongod"]
