void setup() {
  size(800, 800);
  background(255);
  smooth(8);//not sure if this makes a difference??
  stroke(0);
  noFill();
  rectMode(CENTER);//x,y is rectangle's center (all dimentions are based off there)

  int columns = 10;
  int rows = 10;
  float spacing = width/ (columns+ 2);//spacing between each center

  for (int j = 0; j < rows; j++) {
    for (int i = 0; i < columns; i++) {
      float x = (i+1) * spacing + random(-10, 10);
      float y = (j+1) * spacing + random(-10, 10);
      float sidelength = random(30, 70);

      pushMatrix();
      translate(x, y);
      rotate(radians(random(-15, 15)));//rotate randomly (by +-15 degrees)

      //create main square + inner squares
      for (int z = 0; z < 3; z++) {
        float size = sidelength * (1.0- z * 0.3);//inner squares shrinking
        rect(0, 0, size, size);
      }
      popMatrix();
    }
  }
  noLoop();
}
void draw() {}
