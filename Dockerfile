# Use a lightweight Ubuntu image
FROM ubuntu:latest

# Set the maintainer label

# Update package list and install required packages
RUN apt-get update && apt-get install git fortune-mod cowsay netcat-openbsd -y

WORKDIR /home/ubuntu/
# Copy the .sh file from the host to the container
COPY ./wisecow.sh .

# Make the script executable
RUN chmod +x wisecow.sh

# Set the entrypoint to execute the script
EXPOSE 4499

# Define the command to run the script
CMD ["./wisecow.sh"]
