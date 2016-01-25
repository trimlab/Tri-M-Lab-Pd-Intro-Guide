/**
 * oscP5message by andreas schlegel
 * example shows how to create osc messages.
 * oscP5 website at http://www.sojamo.de/oscP5
 */
 
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(500,500); //size of box
  frameRate(25);

  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,12000); 
  
  /* myRemoteLocation is a NetAddress. a NetAddress takes 2 parameters,
   * an ip address and a port number. myRemoteLocation is used as parameter in
   * oscP5.send() when sending osc packets to another computer, device, 
   * application. usage see below. for testing purposes, this sends out the mouse's X and Y 
   * positions over the port 12000. See the oscTEST.pd patch to recieve the OSC message.
   */
  myRemoteLocation = new NetAddress("127.0.0.1",12000);
}


void draw() {
  
    ellipse(mouseX, mouseY, 60, 60); // draw circles with mouse position

  /* Create the messages with the variable name (I made 2 messages for x and y) */
  OscMessage MouseY1 = new OscMessage("/MouseY");
  OscMessage MouseX1 = new OscMessage("/MouseX");
  
  //* fill the messages *//
  MouseX1.add(mouseX); /* add an int to the osc message */
  MouseY1.add(mouseY); /* add an int to the osc message */


  /* send the messages */
  oscP5.send(MouseX1, myRemoteLocation); 
  oscP5.send(MouseY1, myRemoteLocation); 
  
}