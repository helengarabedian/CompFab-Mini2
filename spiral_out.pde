float angle = 0;
float radius = 25;
int i = 0;
int total = 88;
import processing.svg.*;


void setup(){
 //beginRecord(SVG, "spiralOut.svg");
 size(600,600);
 background(255);
 stroke(0);
 pixelDensity(1);
}

void draw(){
  
  if (i < total){
   float cx = width/2;
   float cy = height/2;
   
   float x = cx + radius * cos(angle);
   float y = cy + radius * sin(angle);
   
   float diameter = map(i,0,total,4,40);
   ellipse(x,y,diameter,diameter);
   
   angle += 0.25;
   radius += 3;
   i++;
  } else{
    //endRecord();
    //println("exported.");
    save("output.png");
    noLoop();
    
  }
}
