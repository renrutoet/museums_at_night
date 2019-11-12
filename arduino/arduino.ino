#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
  #include <avr/power.h>
#endif

int r,g,b,targetR,targetB,targetG;

// Which pin on the Arduino is connected to the NeoPixels?
#define PIN            6

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS      156

// When we setup the NeoPixel library, we tell it how many pixels, and which pin to use to send signals.

Adafruit_NeoPixel pixels = Adafruit_NeoPixel(NUMPIXELS, PIN);

int delayval = 500; // delay for half a second

char val; // Data received from the serial port


 void setup() {

 pixels.begin(); // This initializes the NeoPixel library.
 pixels.setBrightness(120);//set brightness of pixels to half
 Serial.begin(9600); // Start serial communication at 9600 bps
 }
 
 void loop() {
 
 while (Serial.available()) { // If data is available to read,
 val = Serial.read(); // read it and store it in val
 }


 //WE NEED TO DO THIS FOR EACH OF THE NOTES THAT WILL BE PLAYED
 if (val == '1') {
  targetG = 0;
  targetB = 255;
  targetR = 0;
  fadeTo();
  
 //this will set all of the pixels to the same colour at once
 for(int i=0; i< pixels.numPixels(); i++) {
      pixels.setPixelColor(i, r,g,b);
      pixels.show();
    }
 }

 if(val == '2'){
   targetG = 255;
   targetB = 102;
   targetR = 0;
   fadeTo();
   
  for(int i=0; i< pixels.numPixels(); i++) {
      pixels.setPixelColor(i, r,g,b);
      pixels.show();
    }
  
 }

  if (val == '3') {
  targetG = 0;
  targetB = 204;
  targetR = 153;
  fadeTo();
  
 //this will set all of the pixels to the same colour at once
 for(int i=0; i< pixels.numPixels(); i++) {
      pixels.setPixelColor(i, r,g,b);
      pixels.show();
    }
 }

  if (val == '4') {
  targetG = 255;
  targetB = 51;
  targetR = 153;
  fadeTo();
  
 //this will set all of the pixels to the same colour at once
 for(int i=0; i< pixels.numPixels(); i++) {
      pixels.setPixelColor(i, r,g,b);
      pixels.show();
    }
 }

   if (val == '5') {
  targetG = 153;
  targetB = 0;
  targetR = 255;
  fadeTo();
  
 //this will set all of the pixels to the same colour at once
 for(int i=0; i< pixels.numPixels(); i++) {
      pixels.setPixelColor(i, r,g,b);
      pixels.show();
    }
 }

   if (val == '6') {
  targetG = 255;
  targetB = 255;
  targetR = 0;
  fadeTo();
  
 //this will set all of the pixels to the same colour at once
 for(int i=0; i< pixels.numPixels(); i++) {
      pixels.setPixelColor(i, r,g,b);
      pixels.show();
    }
 }

    if (val == '7') {
  targetG = 0;
  targetB = 204;
  targetR = 102;
  fadeTo();
  
 //this will set all of the pixels to the same colour at once
 for(int i=0; i< pixels.numPixels(); i++) {
      pixels.setPixelColor(i, r,g,b);
      pixels.show();
    }
 }

    if (val == '8') {
  targetG = 255;
  targetB = 153;
  targetR = 255;
  fadeTo();
  
 //this will set all of the pixels to the same colour at once
 for(int i=0; i< pixels.numPixels(); i++) {
      pixels.setPixelColor(i, r,g,b);
      pixels.show();
    }
 }

    if (val == '9') {
  targetG = 0;
  targetB = 0;
  targetR = 255;
  fadeTo();
  
 //this will set all of the pixels to the same colour at once
 for(int i=0; i< pixels.numPixels(); i++) {
      pixels.setPixelColor(i, r,g,b);
      pixels.show();
    }
 }
 

 
 
 
 delay(100); // Wait 100 milliseconds for next reading
 }

void fadeTo() {
  if(targetG < g){
    g--;
  }
  else if(targetG > g){
    g++;
  }
  if(targetB < b){
    b--;
  }
  else if(targetB > b){
    b++;
  }
  if(targetR < r){
    r--;
  }
  else if(targetR > r){
    r++;
  }
  
 }

 void resetC(){
  r =0;
  g = 0;
  b =0;
  
 }
