# Use the official Rust image from Docker Hub
FROM rust:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Rust code file and Cargo.toml into the container
COPY ./src ./src
COPY Cargo.toml .

# Build the Rust application
RUN cargo build --release

# Set the startup command to run the compiled Rust application
CMD ["./target/release/myapp"]
