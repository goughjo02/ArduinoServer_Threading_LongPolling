/*
 * ClientHandler.cpp
 *
 *  Created on: 26 Apr 2018
 *      Author: joeygough
 */

#include "ClientHandler.h"

ClientHandler::ClientHandler(WiFiClient client) {
	// TODO Auto-generated constructor stub
	_client = client;

}

ClientHandler::~ClientHandler() {
	// TODO Auto-generated destructor stub
}

String ClientHandler::message() {
	String message = "";
	if (analogRead(A0) > 100) {
		message = "on";
	} else {
		message = "off";
	}
	return message;
}
bool ClientHandler::shouldRun(){
	return true;
}

void ClientHandler::run() {
	Serial.println("new client");           // print a message out the serial port
	String currentLine = "";                // make a String to hold incoming data from the client
	String clientMessage = "";
	while (_client.connected()) {            // loop while the _client's connected
		if (_client.available()) {             // if there's bytes to read from the _client,
			// Check to see what _client thinks button is
			if (currentLine.endsWith("GET /on")) {
				clientMessage = "on";
			} else if (currentLine.endsWith("GET /off")) {
				clientMessage = "off";
			}
			char c = _client.read();             // read a byte, then
			Serial.write(c);                    // print it out the serial monitor
			if (c == '\n') {                    // if the byte is a newline character
				// if the current line is blank, you got two newline characters in a row.
				// that's the end of the _client HTTP request, so send a response:
				if (currentLine.length() == 0) {
					while (clientMessage == message()){
						//do nothing until the message changes
					}
					// HTTP headers always start with a response code (e.g. HTTP/1.1 200 OK)
					// and a content-type so the _client knows what's coming, then a blank line:
					_client.println("HTTP/1.1 200 OK");
					_client.println("Content-Type: application/json;charset=utf-8");
					_client.println("Server: Arduino");
					_client.println("Connection: close");
					_client.println();
					_client.println(String("{\"button\":\"" + message() + "\"}"));
					_client.println();
					break;
				}
				else {      // if you got a newline, then clear currentLine:
					currentLine = "";
				}
			}
			else if (c != '\r') {    // if you got anything else but a carriage return character,
				currentLine += c;      // add it to the end of the currentLine
			}
		}
	}
	// close the connection:
	_client.stop();
	Serial.println("client disconnected");
}

