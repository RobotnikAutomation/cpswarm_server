#include <stdlib.h>
/******* Rapidjson includes *******/
#include "rapidjson/document.h"
#include "rapidjson/stringbuffer.h"
/******* General includes *******/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/mman.h>
#include <sys/stat.h>        /* For mode constants */
#include <fcntl.h>           /* For O_* constants */
#include <unistd.h>          /* close() */
#include <limits.h>          /* PATH_MAX */
#include <errno.h>
#include <iostream>
#include <ctime>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <poll.h>

#define PORT 1367
#define IP "127.0.0.1"

using namespace rapidjson;

int main(int argc, char *argv[]){


    int sock;
    //ssize_t ret;
    struct sockaddr_in serv_addr;

    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) == 0)
    {
        std::cout << "socket failed" << std::endl;
        return -1;
    }

    memset(&serv_addr, '0', sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(PORT);

    // Convert IPv4 and IPv6 addresses from text to binary form
    if(inet_pton(AF_INET, IP, &serv_addr.sin_addr)<=0) 
    {
        std::cout << "Invalid address/ Address not supported " << std::endl;
        return -2;
    }

    if (connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0)
    {
        std::cout << "Connection Failed" << std::endl;
        return -3;
    }

    int packet_length = 0;

    std::string query = argv[1];
    packet_length = htonl(query.length());
    send(sock, &packet_length, sizeof(packet_length), 0);
    send(sock, query.c_str(), query.length(),0);

    packet_length = 0;
    int len=0;

    while(len < 4){
        len += read(sock, &packet_length+len, 4);
    }
    packet_length = ntohl(packet_length);

    len = 0;
    char buffer[packet_length+1];
    memset(buffer,0,packet_length+1);
    while(len < packet_length){
        len += read(sock, buffer+len, packet_length-len);
    }
    
    printf("%s\n", buffer);

    close(sock);
    return 0;
}