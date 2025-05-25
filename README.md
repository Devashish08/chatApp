# Client-Server Chat Application (Java Socket Programming)

A **terminal-based**, **multithreaded** Client-Server chat application built with Java Socket Programming. This application enables multiple clients to connect to a central server and exchange **private messages** in real-time through a command-line interface.

## 🚀 Features

### Current Features
- ✅ **Multi-client Support**: Multiple users can connect simultaneously
- ✅ **Private Messaging**: Send messages directly to specific users
- ✅ **Real-time Communication**: Instant message delivery using Java Sockets
- ✅ **User Management**: Automatic user registration and online user listing
- ✅ **Connection Management**: Graceful handling of client connections/disconnections
- ✅ **Error Handling**: Clear error messages for invalid message formats
- ✅ **Terminal Interface**: Simple command-line based interaction
- ✅ **Multithreading**: Server handles multiple clients concurrently
- ✅ **Cross-platform**: Works on Windows, macOS, and Linux

### Message Format
```
<recipient_name> : <your_message>
```
**Examples:**
- `Alice : Hello there!`
- `Bob : How are you doing?`
- `John : Ready for the meeting?`

## 📋 Prerequisites

- **Java 17 or later** (recommended for compatibility)
- **Maven 3.6+** (for build management)
- **Terminal/Command Prompt** access

## 🛠️ Installation & Setup

### 1. Install Java 17
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install openjdk-17-jdk-headless -y

# Verify installation
java -version
javac -version
```

### 2. Install Maven
```bash
# Ubuntu/Debian
sudo apt install maven -y

# Verify installation
mvn -version
```

### 3. Clone and Navigate
```bash
git clone <repository-url>
cd Client-Server-Chat-Application-Java
```

## 🚀 Running the Application

### Quick Start with Makefile (Recommended)

**First time setup:**
```bash
make install  # Install Java 17 and Maven (Ubuntu/Debian only)
make build    # Compile the project
```

**Running the chat:**
```bash
# Terminal 1 - Start Server
make server

# Terminal 2 - Start Client 1  
make client

# Terminal 3 - Start Client 2
make client
```

**See all available commands:**
```bash
make help
```

### Manual Method (Using Maven directly)

### Step 1: Start the Server
Open a terminal and run:
```bash
mvn exec:java -Dexec.mainClass="org.example.servers.Server"
```
- Enter a port number or press **ENTER** for default port `8888`
- Server will display: `"Server started!"` and `"Waiting for a client to connect..."`

### Step 2: Start Client(s)
Open **separate terminal(s)** for each client:
```bash
cd Client-Server-Chat-Application-Java
mvn exec:java -Dexec.mainClass="org.example.clients.Client"
```
- Enter your **unique username**
- Enter the server port (same as server, default: `8888`)
- You'll see: `"<YourName>, you're now connected!"`

### Step 3: Start Chatting!
1. **See online users**: Type `hello` to see current users
2. **Send messages**: Use format `<recipient> : <message>`
3. **Exit**: Type `bye` to disconnect

## 🛠️ Makefile Commands

| Command | Description |
|---------|-------------|
| `make help` | Show all available commands |
| `make install` | Install Java 17 and Maven (Ubuntu/Debian) |
| `make build` | Compile the project |
| `make server` | Start the chat server |
| `make client` | Start a chat client |
| `make clean` | Clean build artifacts |
| `make test` | Run tests |
| `make status` | Check Java and Maven versions |
| `make kill-port` | Kill processes on port 8888 |

## 💬 Usage Example

**Terminal 1 (Server):**
```
Server started!
Waiting for a client to connect...
New Client connected.2025-05-25T15:18:34.123456
Alice is ready for chat
Bob is ready for chat
```

**Terminal 2 (Alice):**
```
Pls, enter your name here: Alice
Alice, you're now connected!
Say Hello! to see your friends online..

Bob : Hi Bob! How are you?
From Bob: Hey Alice! I'm doing great, thanks!
```

**Terminal 3 (Bob):**
```
Pls, enter your name here: Bob
Bob, you're now connected!
Say Hello! to see your friends online..

From Alice: Hi Bob! How are you?
Alice : Hey Alice! I'm doing great, thanks!
```

## 🏗️ Architecture

### Components
- **Server.java**: Main server class handling client connections
- **Client.java**: Client application for connecting to server
- **CommunicationHandler.java**: Manages message routing between clients

### Key Technologies
- **Java Socket Programming** (`java.net.Socket`, `java.net.ServerSocket`)
- **Multithreading** (Each client handled by separate thread)
- **I/O Streams** (`BufferedReader`, `PrintWriter`)
- **Maven** (Build and dependency management)
- **Lombok** (Code generation for getters/setters)

## ⚠️ Current Limitations

- **No Encryption**: Messages are sent in plain text
- **No Authentication**: No password protection
- **Local Network Only**: Designed for localhost usage
- **No Message History**: Messages aren't stored persistently
- **No Group Chat**: Only private 1-to-1 messaging
- **Terminal Only**: No graphical user interface

## 🔮 Future Enhancement Ideas

### Short-term Improvements
- [ ] **Group Chat Functionality**: Send messages to multiple users
- [ ] **Message History**: Store and retrieve past conversations
- [ ] **User Authentication**: Login system with passwords
- [ ] **Message Encryption**: Secure communication with SSL/TLS
- [ ] **Typing Indicators**: Show when someone is typing

### Medium-term Features
- [ ] **File Sharing**: Send files between clients
- [ ] **Emoji Support**: Add emoji reactions and expressions
- [ ] **User Status**: Online/Away/Busy status indicators
- [ ] **Private Rooms**: Create topic-based chat rooms
- [ ] **Message Formatting**: Bold, italic, colored text

### Long-term Vision
- [ ] **Web Interface**: HTML/CSS/JavaScript frontend
- [ ] **Mobile App**: Android/iOS applications
- [ ] **Desktop GUI**: JavaFX or Swing interface
- [ ] **Database Integration**: Persistent user accounts and messages
- [ ] **Voice/Video Chat**: Multimedia communication
- [ ] **API Integration**: Bots, notifications, external services

## 🐛 Troubleshooting

### Common Issues

**Compilation Error:**
```bash
mvn clean compile
```

**Port Already in Use:**
- Choose a different port number
- Kill existing processes: `netstat -tlnp | grep :8888`

**Connection Refused:**
- Ensure server is running before starting clients
- Check firewall settings
- Verify correct port number

**Java Version Issues:**
```bash
sudo update-alternatives --config java
sudo update-alternatives --config javac
```

## 🤝 Contributing

Contributions are welcome! Areas that need improvement:
- Security enhancements
- GUI development
- Performance optimization
- Feature additions
- Bug fixes
- Documentation

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgments

- Built with Java Socket Programming fundamentals
- Uses Maven for build management
- Implements multithreading for concurrent client handling
- Terminal-based interface for simplicity and learning