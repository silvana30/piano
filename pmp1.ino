
#include <LiquidCrystal.h>
#include "pitches.h"
LiquidCrystal lcd(7, 6, 5, 4, 3, 2);
String inputString = "";
int nota;
int duration = 1000 / 2;
int pauseBetweenNotes;
String notain;
bool stringComplete = false;
bool rec = false;
int melody[] = {
  NOTE_C4, NOTE_G3, NOTE_G3, NOTE_A3, NOTE_G3, 0, NOTE_B3, NOTE_C4
};

int noteDurations[100] ;
int melodie[100];
int i = 0;
void setup()
{ Serial.begin(9600);
  //lcd.begin(16, 2);
  //lcd.print("Read Processing:");
  // afisare mesaj pe LCD
  inputString.reserve(16); // rezerva 16 bytes pentru inputString


}
void loop()
{

  if (Serial.available()) {
    notain = Serial.readStringUntil('\n');
    if (rec && (notain == "NOTE_C4" || notain == "NOTE_D4" || notain == "NOTE_E4" || notain == "NOTE_F4" || notain == "NOTE_G4" || notain == "NOTE_A4" || notain == "NOTE_B4" || notain == "NOTE_C5") ) {
      melodie[i] = convert(notain);
      noteDurations[i] = duration;
      i++;

      String thisString = String(i);
      lcd.setCursor(0, 1);
      lcd.print(thisString + "");
    }
    if (notain == "PLAY") {
      lcd.setCursor(0, 1);
      lcd.print(i + "");
      for (int thisNote = 0; thisNote < i; thisNote++) {
        if (melodie[thisNote] != 32) {


          tone(8, melodie[thisNote], noteDurations[thisNote]);


          // to distinguish the notes, set a minimum time between them.
          // the note's duration + 30% seems to work well:
          pauseBetweenNotes = noteDurations[thisNote] * 1.30;
          delay(pauseBetweenNotes);
          // stop the tone playing:
          noTone(8);

        }
      }

      for (int thisNote = 0; thisNote < i; thisNote++) {
        melodie[thisNote] = " ";
        noteDurations[thisNote]=0;
      }
      duration = 0;


    }
    if (notain == "DOIME") {
      duration = 1000 / 2;
    }
    if (notain == "PATRIME") {
      duration = 1000 / 4;
    }
    if (notain == "OPTIME") {
      duration = 1000 / 8;
    }
    if (notain == "STOP") {
      rec = false;
      i = i - 1;
    }
    if (notain == "RECORD") {
      i = 0;
      rec = true;
    }
    if (notain == "NOTE_C4") {


      tone(8, NOTE_C4, duration);



      pauseBetweenNotes = duration * 1.30;
      delay(pauseBetweenNotes);

      noTone(8);

    }
    if (notain == "NOTE_D4") {


      tone(8, NOTE_D4, duration);

      pauseBetweenNotes = duration * 1.30;
      delay(pauseBetweenNotes);

      noTone(8);

    }
    if (notain == "NOTE_E4") {


      tone(8, NOTE_E4, duration);

      pauseBetweenNotes = duration * 1.30;
      delay(pauseBetweenNotes);
      noTone(8);



    }
    if (notain == "NOTE_F4") {


      tone(8, NOTE_F4, duration);

      pauseBetweenNotes = duration * 1.30;
      delay(pauseBetweenNotes);
      noTone(8);
    }
    if (notain == "NOTE_G4") {


      tone(8, NOTE_G4, duration);

      pauseBetweenNotes = duration * 1.30;
      delay(pauseBetweenNotes);
      noTone(8);
    }
    if (notain == "NOTE_A4") {


      tone(8, NOTE_A4, duration);

      pauseBetweenNotes = duration * 1.30;
      delay(pauseBetweenNotes);
      noTone(8);
    }
    if (notain == "NOTE_B4") {


      tone(8, NOTE_B4, duration);

      pauseBetweenNotes = duration * 1.30;
      delay(pauseBetweenNotes);
      noTone(8);
    }
    if (notain == "NOTE_C5") {


      tone(8, NOTE_C5, duration);

      pauseBetweenNotes = duration * 1.30;
      delay(pauseBetweenNotes);
      noTone(8);

    }

  }
}




int convert(String sir) {
  if (sir == "NOTE_C4") {
    return NOTE_C4;
  }
  if (sir == "NOTE_D4") {
    return NOTE_D4;
  }
  if (sir == "NOTE_E4") {
    return NOTE_E4;
  }
  if (sir == "NOTE_F4") {
    return NOTE_F4;
  }
  if (sir == "NOTE_G4") {
    return NOTE_G4;
  }
  if (sir == "NOTE_A4") {
    return NOTE_A4;
  }
  if (sir == "NOTE_B4") {
    return NOTE_B4;
  }
  if (sir == "NOTE_C5") {
    return NOTE_C5;
  }
}







