# Use an official Airflow image as the base image
FROM apache/airflow:2.1.0

# Set your maintainer label
LABEL maintainer="Your Name <your.email@example.com>"

# Copy your requirements.txt file into the image
COPY requirements.txt /requirements.txt

# Install the packages specified in requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

# Optional: You can add any additional configurations or scripts here if needed

# Expose the ports if necessary
# EXPOSE 8080

# Entry command to start Airflow
CMD ["airflow", "webserver"]
