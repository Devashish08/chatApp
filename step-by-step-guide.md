# Running the Chat Application - Step by Step Guide

## ✅ Phase 1: Prerequisites (COMPLETED)
- [x] Java 21 installed and working
- [x] Maven installed and working
- [x] Project directory accessible

## 🔨 Phase 2: Understanding and Building the Project

### What is Maven?
Maven is a build automation tool that:
- **Manages dependencies**: Downloads required libraries automatically
- **Compiles code**: Converts .java files to .class files
- **Packages applications**: Creates runnable JAR files
- **Runs tests**: Executes unit tests

### Key Maven Commands:
- `mvn clean`: Removes previous build files
- `mvn compile`: Compiles the source code
- `mvn test`: Runs unit tests
- `mvn package`: Creates a JAR file
- `mvn exec:java`: Runs the application

### Steps to Build:
1. **Clean previous builds** (if any)
2. **Compile the project**
3. **Verify compilation success**

## 🚀 Phase 3: Running the Application

### Important Order:
1. **ALWAYS start the Server first**
2. **Then start the Client(s)**

### Why this order matters:
- The client tries to connect to the server
- If no server is running, the client will fail to connect
- Think of it like a phone call - someone must answer (server) before you can talk (client)

## 📚 Phase 4: Understanding the Code Structure

Before running, let's understand what each file does:
- **Server.java**: Creates a server that listens for client connections
- **Client.java**: Creates a client that connects to the server
- **CommunicationHandler.java**: Handles message passing between clients

## 🎯 Phase 5: Testing the Chat

### Message Format:
```
<recipient_name> : <your_message>
```
Example: `John : Hello, how are you?`

### Test Scenarios:
1. Connect 2 clients
2. Send messages between them
3. Try connecting a 3rd client
4. Test what happens with wrong recipient names

## 🤔 Learning Questions to Think About

1. **What happens if you start the client before the server?**
2. **How does the server know which client to send a message to?**
3. **What would happen if two clients have the same name?**
4. **Why do we need the CommunicationHandler class?**

## 🔍 Next Steps After Running Successfully
- Explore the source code
- Try modifying the message format
- Add new features like group messages
- Consider adding a GUI interface 