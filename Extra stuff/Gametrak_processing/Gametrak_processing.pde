
import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  size(400,400);
  frameRate(25);
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,12000);
 
for (int i = 0; i <= 13; i++)
    arduino.pinMode(i, Arduino.INPUT);  

  myRemoteLocation = new NetAddress("127.0.0.1",12001);
}

void draw() {
  background(0);  

  /* in the following different ways of creating osc messages are shown by example */
 
  
  
   int R_Z = arduino.analogRead(0);
   int L_Y = arduino.analogRead(1);
   int R_Y = arduino.analogRead(2);
   int R_X = arduino.analogRead(3);
   int L_X = arduino.analogRead(4);
   int L_Z = arduino.analogRead(5);
   
   OscMessage myMessage = new OscMessage("/All");
   myMessage.add(R_X);
   myMessage.add(R_Y);
   myMessage.add(R_Z);
   myMessage.add(L_X);
   myMessage.add(L_Y);
   myMessage.add(L_Z);
   oscP5.send(myMessage, myRemoteLocation); 
   
   
  // myMessage.add("R_X");
   //myMessage.add(R_X);
   //myMessage.add("R_Y");
   //myMessage.add(R_Y);
   //myMessage.add("R_Z");
   //myMessage.add(R_Z);
   
  // myMessage.add("L_X");
   //myMessage.add(L_X);
   //myMessage.add("L_Y");
  //myMessage.add(L_Y);
  // myMessage.add("L_Z");
  // myMessage.add(L_Z);
 
  /* send the message */
  //oscP5.send(myMessage, myRemoteLocation); 
  delay(20);
}