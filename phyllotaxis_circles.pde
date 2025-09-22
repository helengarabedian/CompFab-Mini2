int n = 0;               
int total = 800;// total circles
float spacing = 10;
float angle = radians(137.5); //golden angle

void setup() {
  size(600,600);//600 pixels is approx 6 in
  background(255);
  //stroke(0);
  //noFill();
  fill(0);
}

void draw() {
  if (n < total) {
    translate(width/2, height/2);

    float r = spacing* sqrt(n); //radius from center
    float a = n* angle;//roation
    float x = r* cos(a);
    float y = r* sin(a);

    float d = map(n, 0, total, 2, 12);//diameter of circle
    ellipse(x, y, d, d);

    n++;
  } else {
    noLoop();
    save("outwardCircle.png");
  }
}
