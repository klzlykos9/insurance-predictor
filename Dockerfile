# Use Python 3.11 base Image
FROM python:3.11-slim

# Set working directory
WORKDIR /main

# Copy requirements and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of application cache
COPY . .

# Expose the application port
EXPOSE 8000

# Command to start FASTAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]