import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

PImage bg;
PImage pull;

void setup(){
  size(710,465);
  println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  bg = loadImage("clouds_2.png");
  pull = loadImage("GunScene_4.png");
  
}

void draw(){
  background (bg);
  println(arduino.analogRead(0));
  if (arduino.analogRead(0)>450) {
    background (pull);
  }
}
  
  
