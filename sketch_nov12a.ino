void setup() {
  //setup the outputs for the colour sensor
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
 
  //begin serial communication
  Serial.begin(9600);
 
}

void loop() {
  // put your main code here, to run repeatedly:
int xaxis = analogRead(A0);
int yaxis = analogRead(A1);
int zaxis = analogRead(A2);
Serial.print(xaxis);
Serial.print(yaxis);
Serial.println(zaxis);
delay(10);
}
