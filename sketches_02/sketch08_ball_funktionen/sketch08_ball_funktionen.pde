//Variablen für die Position
float posX;
float posY;

//Variablen für die Geschwindigkeit
float tempoX;
float tempoY;

void setup() {

  size (300, 300);
  colorMode(HSB, 360, 100, 100);
  noFill();
  stroke(200, 40, 100);

  //Startposition und Starttempo
  posX = width/2;
  posY = height/2;

  tempoX = 4;
  tempoY = 2.5;
}

void draw() {
  ball_display();
  ball_move();
  ball_checkRand();
}

//Funktion zum Zeichnen
void ball_display() {
  background(200, 10, 10);
  ellipse(posX, posY, 50, 50);
}


//Funktion für die Bewegung
void ball_move() {
  posX = posX + tempoX;
  posY = posY + tempoY;
}

//Funktion um die Kollision mit dem Rand zu testen 
void ball_checkRand() {
  if ( (posX > width) || (posX < 0) ) {
    tempoX = tempoX * -1;
  }

  if ( (posY > height) || (posY < 0) ) {
    tempoY = tempoY * -1;
  }
}

