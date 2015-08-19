void setup() {
  size(800, 400);

  colorMode(HSB, 360, 100, 100);
  noStroke();
  background(0, 0, 100);
  frameRate(1);
}


void draw() {
  background(0, 0, 100);

  for (int i = 0; i <= 8; i++) {
    kreis(400, 200, 400, i);
  }
}

void kreis(float x, float y, float dia, int nummer) {

  fill(random(0, 200), 40, 80, 80 );
  float radius = dia/nummer;

  ellipse(x-radius/2, y, radius, radius);

  ellipse(x+radius/2, y, radius, radius);
}

