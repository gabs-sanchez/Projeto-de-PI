int ldr_pin=A5;
int ldr_read=0;
float vin=5.00;
float valor_ADC = 0.00480758, r_ohms = 100000; 

void setup(){
  Serial.begin(9600) ; 
}

void loop(){ 
  if(isnan(ldr_read)){
    Serial.print("Erro! Reveja o código!");
  }
  else{ 
    ldr_read= analogRead(ldr_pin);
    float vout = valor_ADC * ldr_read; 
    float res_ldr = (r_ohms*(vin - vout)/vout; 
    float lux = 500/(res_ldr/1000); 
  // Quanto maior a incidencia de luz, menor a resistencia do sensor
  // Checando a voltagem do sensor, fŕmulas pra isso;

  }

  if(ldr_read>750){
    Serial.print(ldr_read); 
    Serial.print(" Vout: "); 
    Serial.print(vout);
    Serial.print(" R_ldr: " ); 
    Serial.print(res_ldr); 
    Serial.print(" Lux: "); 
    Serial.print(lux); 
    Serial.print("O ambiente está claro (:"); 
   else{
       Serial.print(ldr_read); 
    Serial.print(" Vout: "); 
    Serial.print(vout);
    Serial.print(" R_ldr: " ); 
    Serial.print(res_ldr); 
    Serial.print(" Lux: "); 
    Serial.print(lux); 
    Serial.print("O ambiente está escuro"); 
   }
  }
  delay(2000); 
  
}
