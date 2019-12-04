/**
 * Radial Gradient. 
 * 
 * Draws a series of concentric circles to create a gradient 
 * from one color to another.
 */

int dim;

void setup() {
  size(640, 500);
  dim = width/2;
  background(10);
  colorMode(HSB, 200, 100, 5);
  noStroke();
  ellipseMode(RADIUS);
  frameRate(10);
}

void draw() {
  background(0);
  for (int x = 0; x <= width; x+=dim) {
    drawGradient(x, height/5);
  } 
}

void drawGradient(float x, float y) {
  int radius = dim/2;
  float h = random(0, 50);
  for (int r = radius; r > 10; --r) {
    fill(h, 90, 50);
    ellipse(x, y, r, r);
    h = (h + 1) % 360;
  }
}
