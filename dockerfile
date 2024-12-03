# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside the container
EXPOSE 5000

# Define the environment variable for Flask (optional)
ENV FLASK_APP=app.py

# Use gunicorn to run the Flask application
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
