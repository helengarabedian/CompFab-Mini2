import Turtle.*;

void setup(){
  noLoop();
  background(255);
  size(500,500);
  

}
int slices = 5; 
int numStrokes = 100;

void drawRandStroke(){
 stroke(0);
 
 float maxRadius = width * 0.8;
 
 //rR = random radius 
 //rA = random angle
 float rR1 = random(maxRadius);
 float rR2 = random(maxRadius);
 float rA1 = random(2* PI);
 float rA2 = rA1 + random(-0.8,0.8);
 
 float x1 = rR1*cos(rA1);
 float y1 = rR1*sin(rA1);
 float x2 = rR1*cos(rA2);
 float y2 = rR1*sin(rA2);
 
 float rot = (2*PI)/slices;
 
 pushMatrix();
 translate(width/2,height/2);
 for (int i=0; i<slices; i++){
  pushMatrix();
  rotate(rot*i);
  line(x1, y1, x2, y2);
  popMatrix();
   
 }
 popMatrix();
}


void draw(){
    for (int i=0; i<numStrokes; i++){
    drawRandStroke();
  }
}
