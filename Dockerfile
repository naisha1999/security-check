# Use an outdated base image with known vulnerabilities
FROM python:3.7-stretch

# Set the working directory inside the container
WORKDIR /app

# Install outdated or vulnerable packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    python2 \
    git \
    && rm -rf /var/lib/apt/lists/*

# Add a Python script with hardcoded sensitive data (security risk)
RUN echo 'print("Hello, World!")\npassword = "supersecret"' > hello.py

# Expose an unnecessary port (bad practice for a script)
EXPOSE 8080

# Set the default command to run the Python script
CMD ["python", "hello.py"]
