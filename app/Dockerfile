# Use official Python image
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy files
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Run the app
EXPOSE 80
CMD ["python", "app.py"]