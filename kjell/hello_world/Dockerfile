# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /kjell/hello_world
WORKDIR /kjell/hello_world

# Copy the current directory contents into the container at /kjell/hello_world
COPY . /kjell/hello_world

# Install any needed packages specified in requirements.txt
# For example, if you have requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
# EXPOSE 80

# Define environment variable
# ENV NAME World

# Run hello_world.py when the container launches
CMD ["python", "./hello_world.py"]
