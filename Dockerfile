# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-dev \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app/.

# Create and activate virtual environment
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN /opt/venv/bin/pip install --upgrade pip

# Install project dependencies
RUN /opt/venv/bin/pip install -r requirements.txt

# Expose the application port
EXPOSE 8000

# Run the application
CMD ["/opt/venv/bin/python", "manage.py", "runserver", "0.0.0.0:8000"]
