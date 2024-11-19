# Use a supported Python runtime
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    && rm -rf /var/lib/apt/lists/*

# Add a simple Python script
RUN echo 'print("Hello, World!")' > hello.py

# Expose unnecessary port (vulnerability example)
EXPOSE 8080

# Set the default command
CMD ["python", "hello.py"]
