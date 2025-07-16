# Dockerfile

# Use official Python runtime as base image
FROM python:3.10

# Set working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Set environment variable for port
ENV PORT 8080

# Run the application with gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
