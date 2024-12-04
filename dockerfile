# Use a Python base image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Flask app code to the container
COPY . /app

# Install Flask
RUN pip install flask

# Expose the port that the Flask app will run on
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
