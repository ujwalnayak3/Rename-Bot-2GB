FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy all the files from the current directory to /app in the container
COPY . /app/

# Install FFmpeg
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run your Python script
CMD ["python3", "bot.py"]
