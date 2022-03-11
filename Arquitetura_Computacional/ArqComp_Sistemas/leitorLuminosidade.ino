int sensorPin = 40 ; 
int sensorValue = 0 ;

void setup(){ 
  Serial.begin(9600); 
  
}

void loop(){ 
  sensorValue = analogRead(sensorPin);
  Serial.println(sensorValue); 
}
