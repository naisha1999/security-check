# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Create a simple Python script
RUN echo 'print("Hello, World!")' > hello.py

# Set the default command to run the Python script
CMD ["python", "hello.py"]
