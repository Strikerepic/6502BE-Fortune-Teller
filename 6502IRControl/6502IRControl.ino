#include <IRremote.hpp>
#define resetPin 6
#define buzzerPin 11
#define irqPin 9


void setup()
{
  Serial.begin(9600);
  pinMode(resetPin, OUTPUT);
  pinMode(buzzerPin, OUTPUT);
  pinMode(irqPin, OUTPUT);
  IrReceiver.begin(7, ENABLE_LED_FEEDBACK); // Start the receiver
}


void loop() {

digitalWrite(resetPin, HIGH);
digitalWrite(irqPin, HIGH);

  if (IrReceiver.decode()) {
      Serial.println(IrReceiver.decodedIRData.decodedRawData, HEX); // Print "old" raw data
      /* USE NEW 3.x FUNCTIONS */
      IrReceiver.printIRResultShort(&Serial); // Print complete received data in one line
      IrReceiver.printIRSendUsage(&Serial);   // Print the statement required to send this data

        switch(IrReceiver.decodedIRData.decodedRawData){
          case 0xBA45FF00:   //This is the given case for my remote. Using it to pull pin 13 LOW
          Serial.println("Power Button");
          digitalWrite(buzzerPin,HIGH);
          delay(100);
          digitalWrite(buzzerPin,LOW);
          delay(100);
          digitalWrite(buzzerPin,HIGH);
          delay(100);
          digitalWrite(buzzerPin,LOW);
          delay(100);
          digitalWrite(buzzerPin,HIGH);    // Everything above is for the buzzer beeps
          

          digitalWrite(resetPin, LOW);   //Pulling LOW here, needed to mimic pushing reset on computer
          delay(1250);             //Holding low so it feels satisfying after you push the button (Needs to wait 3 clock cycles (Overkill here))
          digitalWrite(buzzerPin,LOW);    //Turn off the buzzer
          break;



          case 0xBC43FF00:                //Case for track -> button on my remote. Using it to inc bank num
          Serial.println("CH+");
          digitalWrite(buzzerPin,HIGH);
          delay(45);
          digitalWrite(buzzerPin,LOW);
          delay(45);
          digitalWrite(buzzerPin,HIGH);
          delay(45);
          digitalWrite(buzzerPin,LOW);    //Buzzer Sound effect


          
          digitalWrite(irqPin,LOW);
          delay(125);          //Held low for long enough
          break;
        }

      IrReceiver.resume(); // Enable receiving of the next value
  }

}