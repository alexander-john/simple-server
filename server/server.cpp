#include <iostream>
#include <string>
#include <winsock2.h>
#include <ws2tcpip.h>

#define PORT 8080

int main() {
    WSADATA wsaData;
    SOCKET serverSocket, newSocket;
    struct sockaddr_in serverAddr, clientAddr;
    int clientAddrSize = sizeof(clientAddr);
    char buffer[1024] = {0};
    std::string hello = "Hello from server";

    // initialize Winsock
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "WSAStartup failed\n";
        return 1;
    }

    // create socket
    if ((serverSocket = socket(AF_INET, SOCK_STREAM, 0)) == INVALID_SOCKET) {
        std::cerr << "Socket creation failed\n";
        WSACleanup();
        return 1;
    }

    serverAddr.sin_family = AF_INET;
    serverAddr.sin_addr.s_addr = INADDR_ANY;
    serverAddr.sin_port = htons(PORT);

    // Bind socket
    if (bind(serverSocket, (struct sockaddr *)&serverAddr, sizeof(serverAddr)) == SOCKET_ERROR) {
        std::cerr << "Bind failed\n";
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    // Listen for incoming connections
    if (listen(serverSocket, SOMAXCONN) == SOCKET_ERROR) {
        std::cerr << "Listen failed\n";
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    std::cout << "Server listening on port " << PORT << std::endl;

    // Accept incoming connection
    if ((newSocket = accept(serverSocket, (struct sockaddr *)&clientAddr, &clientAddrSize)) == INVALID_SOCKET) {
        std::cerr << "Accept failed\n";
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    std::cout << "Client connect\n";

    // Received data from client
    int bytesReceived = recv(newSocket, buffer, sizeof(buffer), 0);
    if (bytesReceived == SOCKET_ERROR) {
        std::cerr << "Recv failed\n";
        closesocket(newSocket);
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    std::cout << "Client: " << buffer << std::endl;

    // Send response to client
    if (send(newSocket, hello.c_str(), hello.length(), 0) == SOCKET_ERROR) {
        std::cerr << "Send failed\n";
        closesocket(newSocket);
        closesocket(serverSocket);
        WSACleanup();
        return 1;
    }

    std::cout << "Hello message sent\n";

    // Cleanup
    closesocket(newSocket);
    closesocket(serverSocket);
    WSACleanup();

    return 0;
}