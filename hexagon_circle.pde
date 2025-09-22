void setup() {
  size(800, 800);
  background(255);
  stroke(0);
  noFill();
  translate(width/2, height/2);//center

  int rings = 6;//6 rings of concentric hexagons
  float step = 60;//distance between each ring

  for (int r = 0; r <= rings; r++) {
    int count = r == 0 ? 1 : 6* r;//1 hex in center, next has 6 hex, next 12,18, etc
    float radius = r* step;

    for (int i = 0; i < count; i++) {
      float angle = 2*PI * i/ count;//angle of rotation
      float x = cos(angle) * radius;//x-pos
      float y = sin(angle) * radius;//y-pos
      polygon(x, y, 25, 6);//hexagon(6), size 25
    }
  }
  noLoop();
}

void draw() {}

void polygon(float x, float y, float size, int numSides) {
  beginShape();
  for (int i = 0; i < numSides; i++) {
    float ang = 2*PI* i/ numSides -0.5*PI;//vertex angle
    vertex(x + cos(ang) * size, y + sin(ang) * size);//adding vertex w angle offset
  }
  endShape(CLOSE);
}
