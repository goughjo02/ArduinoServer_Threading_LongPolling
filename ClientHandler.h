/*
 * ClientHandler.h
 *
 *  Created on: 26 Apr 2018
 *      Author: joeygough
 */

#ifndef CLIENTHANDLER_H_
#define CLIENTHANDLER_H_

#include <Thread.h>
#include <WiFi101.h>

class ClientHandler: public Thread {
public:
	ClientHandler(WiFiClient client);
	virtual ~ClientHandler();
	void run();
	bool shouldRun();

private:
	WiFiClient _client;
	String message();
};

#endif /* CLIENTHANDLER_H_ */
