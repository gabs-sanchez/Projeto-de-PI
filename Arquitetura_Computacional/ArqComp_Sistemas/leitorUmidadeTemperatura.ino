o in da#include "DHT.h"
#define dht_type DHT11 // define qual o tipo de sensor DHT11 que está utilizando
int dht_pin= A2; 
DHT dht_1 = DHT(dht_pin, dht_type); // pode configurar sensores DHTxx

void setup() 
{
Serial.begin(9600);
dht1.begin(); 
  
}

void loop()
{
  float umidade= dht_1.readHumidity(); 
  float temperatura = dht_1.readTemperature(); 
  if (isnan(temperatura) or isnan(umidade))
  {
    Serial.println("Erro ao ler Temperatura");
  }
  else
  {
  Serial.print("Umidade: ");
  Serial.print(umidade); 
  Serial.print(" Temperatura: ");
  Serial.print(temperatura); 
  Serial.println("°C") ; 
  }
delay(2000); 

}
