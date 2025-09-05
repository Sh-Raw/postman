# Use official Newman image
FROM postman/newman:latest

# Copy your collection into the container
COPY my-api-tests.json /etc/newman/my-api-tests.json

# Optional: Copy environment files too if you have
# COPY my-environment.json /etc/newman/my-environment.json

# Default command to run the collection when container starts
CMD ["run", "my-api-tests.json"]
