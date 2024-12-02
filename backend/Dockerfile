FROM ubuntu:25.04

# Update package lists
RUN apt-get update 

# Install packages
RUN apt-get install -y python3 python3-setuptools python3-dev build-essential python3-pip iputils-ping mysql-client python3-venv

# Create and activate a virtual environment
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Install Flask and Flask-MySQL
RUN pip3 install flask Flask-MySQL

# Copy application code
COPY app.py /opt/

COPY wait-for-mysql.sh /opt/
RUN chmod +x /opt/wait-for-mysql.sh

ENTRYPOINT ["/bin/sh", "-c", "/opt/wait-for-mysql.sh && flask run --host=0.0.0.0 --port=8080"]
