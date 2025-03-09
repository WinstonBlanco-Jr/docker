# Use an official Python image as the base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your application code into the container
COPY . /app

# RUN pip install ... installs the packages during the image build.
# --no-cache-dir keeps the image size smaller by avoiding cached files.
RUN pip install --no-cache-dir -r requirements.txt 

# Run the app when the container starts
CMD ["python", "app.py"]

# when theres changes always rebuild the image then run the docker file
# docker build -t my-python-app . (This creates an image named my-python-app.)
# docker run my-python-app (Start a container from your image:)
# docker run -e API_KEY="your-secret-key" my-python-app (running docker if theres secrets)
