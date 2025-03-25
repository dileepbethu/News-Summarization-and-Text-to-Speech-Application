# Use an official lightweight Python image
FROM python:3.10


# Set the working directory in the container
WORKDIR /app

# Copy all project files into the container
COPY . .

# Install dependencies from requirements.txt
# Install Rust & Cargo before running pip install
RUN apt-get update && apt-get install -y curl && \
    curl https://sh.rustup.rs -sSf | sh -s -- -y && \
    export PATH="$HOME/.cargo/bin:$PATH" && \
RUN pip install --no-cache-dir -r requirements.txt uvicorn|| pip install altair==5.0.1


# Expose the port FastAPI will run on
EXPOSE 8000

# Command to run FastAPI
CMD ["python", "-m", "uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8000"]

