# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy dependency files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source
COPY service ./service

# Expose application port
EXPOSE 8080

# Run the Flask application
CMD ["python", "-m", "service"]
