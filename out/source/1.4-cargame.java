import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class 1.4-cargame extends PApplet {

float xned;
float yned;
float yop;
float xop;

PImage roedbilned; //definere rødbil som et billede
PImage roedbilop;

public void setup(){
  
  roedbilned=loadImage("Roedbilned.png");
  roedbilop=loadImage("Roedbilop.png");
  frameRate(60);
  xned=random(0,600);
  xop=random(0,600);
  yned=0;
  yop=height;
}

public void draw(){
  background(180);
  yned = yned+2;
  yop = yop-2;
  image(roedbilned,xned,yned);
  image(roedbilop,xop,yop);
  roedbilned.resize(50,100);
  roedbilop.resize(50,100);
}
PImage spiller;

int spillerX;
int spillerY;
int spillerHeight;
int spillerWidth;


public void setup() {
  size(600,600);
  smooth();
  frameRate(120);
  
  spiller = loadImage("spillerNed.png");
  spillerX=50;
  spillerY=50;
  spillerWidth=60;
  spillerHeight=60;
}

public void draw() {
  background(123);
  
  if (keyPressed && (key == 'w')) {
    spillerY-=5;
    spiller = loadImage("spillerOp.png");
  }
  else if (keyPressed && (key == 'a')) {
    spillerX-=5;
    spiller = loadImage("spillerVenstre.png");
  }
  else if (keyPressed && (key == 's')) {
    spillerY+=5;
    spiller = loadImage("spillerNed.png");
  }
  else if (keyPressed && (key == 'd')) {
    spillerX+=5;
    spiller = loadImage("spillerHøjre.png");
  }
  image(spiller,spillerX,spillerY,spillerWidth,spillerHeight);
}
  public void settings() {  size(600,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "1.4-cargame" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
