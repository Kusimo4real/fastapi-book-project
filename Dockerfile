# Use a lightweight Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the Python dependencies listed in requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy all your project files into the container
COPY . .

# Expose the port that FastAPI runs on (8000)
EXPOSE 8000

# Run the FastAPI app using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

