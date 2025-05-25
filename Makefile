# Client-Server Chat Application Makefile
# Simple commands to build and run the chat application

.PHONY: help build clean server client test compile install

# Default target - show help
help:
	@echo "🚀 Client-Server Chat Application - Available Commands:"
	@echo ""
	@echo "📦 BUILD COMMANDS:"
	@echo "  make install    - Install Java 17 and Maven (Ubuntu/Debian)"
	@echo "  make build      - Compile the project"
	@echo "  make clean      - Clean build artifacts"
	@echo "  make test       - Run tests"
	@echo ""
	@echo "🏃 RUN COMMANDS:"
	@echo "  make server     - Start the chat server"
	@echo "  make client     - Start a chat client"
	@echo ""
	@echo "🔧 UTILITY COMMANDS:"
	@echo "  make status     - Check Java and Maven versions"
	@echo "  make kill-port  - Kill any process using port 8888"
	@echo "  make help       - Show this help message"
	@echo ""
	@echo "📋 USAGE EXAMPLE:"
	@echo "  1. make install  (first time only)"
	@echo "  2. make build"
	@echo "  3. make server   (in terminal 1)"
	@echo "  4. make client   (in terminal 2)"
	@echo "  5. make client   (in terminal 3, etc.)"

# Install prerequisites (Java 17 and Maven)
install:
	@echo "📦 Installing Java 17 and Maven..."
	sudo apt update
	sudo apt install openjdk-17-jdk-headless maven -y
	@echo "✅ Installation complete!"
	@make status

# Check system status
status:
	@echo "🔧 System Status:"
	@echo "Java version:"
	@java -version 2>&1 | head -1 || echo "❌ Java not installed"
	@echo "Maven version:"
	@mvn -version 2>&1 | head -1 || echo "❌ Maven not installed"
	@echo ""

# Build/compile the project
build: compile

compile:
	@echo "🔨 Compiling the project..."
	mvn clean compile
	@echo "✅ Build complete!"

# Clean build artifacts
clean:
	@echo "🧹 Cleaning build artifacts..."
	mvn clean
	@echo "✅ Clean complete!"

# Run tests
test:
	@echo "🧪 Running tests..."
	mvn test
	@echo "✅ Tests complete!"

# Start the server
server:
	@echo "🖥️  Starting Chat Server..."
	@echo "💡 Press ENTER to use default port 8888"
	@echo "💡 Press Ctrl+C to stop server"
	@echo "=================================="
	mvn exec:java -Dexec.mainClass="org.example.servers.Server"

# Start a client
client:
	@echo "💬 Starting Chat Client..."
	@echo "💡 Enter your unique username when prompted"
	@echo "💡 Use port 8888 (or same as server)"
	@echo "💡 Message format: <recipient> : <message>"
	@echo "💡 Type 'bye' to exit"
	@echo "======================================"
	mvn exec:java -Dexec.mainClass="org.example.clients.Client"

# Kill any process using port 8888
kill-port:
	@echo "🔪 Killing processes on port 8888..."
	@sudo lsof -ti:8888 | xargs sudo kill -9 2>/dev/null || echo "No processes found on port 8888"
	@echo "✅ Port 8888 is now free!"

# Alternative commands for convenience
start-server: server
start-client: client
run-server: server
run-client: client 