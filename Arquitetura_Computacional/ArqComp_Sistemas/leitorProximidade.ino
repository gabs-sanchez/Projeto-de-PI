int pinoSensor = 7; 

void setup(){
  pinMode(pinoSensor, INPUT); 
  Serial.begin(9600); 
}

void loop(){ 
  if(digitalRead(pinoSensor)==LOW){ 
    Serial.println("Objeto Detectado! (1)") ; 
  }
  else if(isnan(pinoSensor)) {
    Serial.print("Erro!");
    break; 
  }
  else { 
    Serial.println("Objeto ausente (0)");
  }
}
