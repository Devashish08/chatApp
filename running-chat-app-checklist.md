# Chat Application Running Checklist

## Prerequisites Verification
- [ ] Verify Java is installed (Java 8+ required, project uses Java 19)
- [ ] Verify Maven is installed 
- [ ] Navigate to project directory

## Understanding the Project
- [ ] Understand what Maven is and why it's used
- [ ] Understand socket programming basics
- [ ] Understand client-server architecture
- [ ] Review the README.md file

## Build and Compile Steps
- [ ] Clean any previous builds
- [ ] Compile the project using Maven
- [ ] Verify compilation was successful

## Running the Application
- [ ] Start the server first (always start server before clients)
- [ ] Start one or more clients
- [ ] Test basic communication
- [ ] Test multi-client communication

## Testing Scenarios
- [ ] Connect 2+ clients simultaneously
- [ ] Send private messages between specific clients
- [ ] Test message format: `<receiver name> : <your message>`
- [ ] Test edge cases (what happens when recipient doesn't exist?)

## Troubleshooting Common Issues
- [ ] Port already in use error
- [ ] Connection refused error
- [ ] Messages not being received
- [ ] Server not accepting connections

## Extension Ideas (For Later Learning)
- [ ] Add user authentication
- [ ] Add message encryption
- [ ] Add group chat functionality
- [ ] Add GUI interface
- [ ] Add message history/persistence 