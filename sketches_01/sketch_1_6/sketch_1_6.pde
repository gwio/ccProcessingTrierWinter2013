//Einmal
void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);

  background(0, 0, 100);
}

//läuft für immer
void draw() {
  noStroke();
  rectMode(CENTER);

  fill(55, 255, 120);
  rect(mouseX, mouseY, 200, 200);
}

