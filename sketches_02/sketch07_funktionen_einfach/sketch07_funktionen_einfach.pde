
float posX;
float posY;

void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  noStroke();

  posX = 100;
  posY = 100;
}

void draw() {
  background(10, 10, 10);

  element();
}


void element() {
  fill(30, 100, 80);
  ellipse(posX+50, posY+50, 60, 60);
  fill(0, 50, 100, 50);
  rect(posX, posY, 100, 100);
  fill(0, 100, 70);
  ellipse(posX+50, posY+50, 30, 30);
}

