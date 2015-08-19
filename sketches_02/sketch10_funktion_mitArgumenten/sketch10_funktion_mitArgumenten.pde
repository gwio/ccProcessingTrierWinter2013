


void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw() {
  background(10, 10, 10);

  // die Funktion element(); braucht jetzt 2 float für die X und Y position
  element(300, 100);

  // element(100, 200);

  // element(210, 350);
}

//die funktion übernimmt jetzt die Variablen die es in draw() bekommt
void element(float x, float y) {
  fill(30, 100, 80);
  ellipse(x+50, y+50, 60, 60);
  fill(0, 50, 100, 50);
  rect(x, y, 100, 100);
  fill(0, 100, 70);
  ellipse(x+50, y+50, 30, 30);
}


//void mouseMoved() {
//  element(mouseX, mouseY);
//}

