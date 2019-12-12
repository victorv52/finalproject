import processing.serial.*;

Serial myPort;
int[] inputVars = {0, 0, 0}; //make array to be populated from serial (note number of variables) //for multiple variables



void setup () {
  size(200, 200);
  rectMode(CENTER);
  println(Serial.list()); //print serial devices (remember to count from 0)
  myPort = new Serial(this, Serial.list()[0], 9600); //make sure the baudrate matches arduino
  myPort.bufferUntil('\n'); // don't generate a serialEvent() unless you get a newline character
}
void draw () {
background(255*inputVars[0]/940,255*inputVars[1]/660,255*inputVars[2]/890);
//background(255*inputVars[1]/656,512);
//background(255*inputVars[2]/880,415);
//inputVars[1]
//inputVars[2]
}

void serialEvent (Serial myPort) {
  String inString = myPort.readStringUntil('\n'); //read until new line (Serial.println on Arduino)
  if (inString != null) {
    inString = trim(inString); // trim off whitespace
    inputVars = int(split(inString, ',')); // break string into an array and change strings to ints //for multiple variables
    //inputVars = int(inString); //for a single variable
  }
}
