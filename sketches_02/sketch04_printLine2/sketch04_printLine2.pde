
float posX;

void setup() {
  size(800, 300);
  noStroke();
  fill(100, 200, 50);
}


void draw() {
  background(255, 255, 255);

  ellipse(posX, height/2, 20, 20);

  posX++;

  if (posX > width) {
    posX = 0;
  }

  println(posX);
}

