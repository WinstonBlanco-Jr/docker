# Use an official Python image as the base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your application code into the container
COPY . /app

# Run the app when the container starts
CMD ["python", "app.py"]

# docker build -t my-python-app . (This creates an image named my-python-app.)
# docker run my-python-app (Start a container from your image:)
