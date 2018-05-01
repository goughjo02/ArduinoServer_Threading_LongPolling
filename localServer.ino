#include <SPI.h>
#include <WiFi101.h>
#include <Thread.h>
#include "ClientHandler.h"

IPAddress ip(192, 168, 1, 111);
char ssid[] = "";        // your network SSID (name)
char pass[] = "";    // your network password (use for WPA, or use as key for WEP)
int keyIndex = 0;                 // your network key Index number (needed only for WEP)

int status = WL_IDLE_STATUS;
WiFiServer server(80);

void setup() {
	Serial.begin(9600);
	pinMode(6, INPUT);
	if (WiFi.status() == WL_NO_SHIELD) {
		Serial.println("WiFi shield not present");
		while (true);       // don't continue
	}
	WiFi.config(ip);
	while ( status != WL_CONNECTED) {
		Serial.print("Attempting to connect to Network named: ");
		Serial.println(ssid);                   // print the network name (SSID);
		status = WiFi.begin(ssid, pass);        // Connect to WPA/WPA2 network. Change this line if using open or WEP network:
		delay(10000);
	}
	server.begin();                           // start the web server on port 80
	printWiFiStatus();                        // you're connected now, so print out the status
}

void loop() {
	WiFiClient client = server.available();   // listen for incoming clients
	if (client) {                             // if you get a client,
		ClientHandler myClientHandler = ClientHandler(client);
		myClientHandler.run();
	}
}


void printWiFiStatus() {
	// print the SSID of the network you're attached to:
	Serial.print("SSID: ");
	Serial.println(WiFi.SSID());

	// print your WiFi shield's IP address:
	IPAddress ipactual = WiFi.localIP();
	Serial.print("IP Address: ");
	Serial.println(ipactual);

	// print the received signal strength:
	long rssi = WiFi.RSSI();
	Serial.print("signal strength (RSSI):");
	Serial.print(rssi);
	Serial.println(" dBm");
	// print where to go in a browser:
	Serial.print("To see this page in action, open a browser to http://");
	Serial.println(ip);
}
