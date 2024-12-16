# Use the official Python image from Docker Hub
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt into the container at /app
COPY requirements.txt /app/

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container at /app
COPY . /app/

# Expose the port that Flask will run on
EXPOSE 5000

# Set the environment variable to let Flask know it's in production
ENV FLASK_ENV=production

# Command to run the Flask application
CMD ["python", "server.py"]
