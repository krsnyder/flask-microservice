# syntax=docker/dockerfile:1

# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set the working directory to /app
WORKDIR /app

COPY requirements.txt requirements.txt

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Run app.py when the container launches
CMD ["python3", "-m", "flask", "run", "--host+0.0.0.0"]

