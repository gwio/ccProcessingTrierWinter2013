
int x;

void setup() {
  //damit es nicht zu schnell zählt, 
  //ist die Geschwindigkeit auf 1 Frame pro Sekunde gestellt
  frameRate(1);
  x = 0;
}


void draw() {
  //Gibt unten den Inhalt der Variable x aus
  println(x);
  //Erhöht x jeden Frame +1
  x++;
}

