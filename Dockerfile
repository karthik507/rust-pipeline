# Use the official Rust image from Docker Hub
FROM rust:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Rust code file into the container
COPY ./src/main.rs ./src/main.rs

# Build the Rust application
RUN cargo build --release

# Set the startup command to run the compiled Rust application
CMD ["./target/release/myapp"]
