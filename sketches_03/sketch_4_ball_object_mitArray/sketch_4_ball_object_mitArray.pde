int anzahl = 10;

class Ball {

  //Variablen für die Position
  float posX;
  float posY;

  //Variablen für die Geschwindigkeit
  float tempoX;
  float tempoY;


  Ball() {
    //Startposition und Starttempo
    posX = random(width);
    posY = random(height);

    tempoX = 4;
    tempoY = 2.5;
  }

  //Funktion zum Zeichnen
  void ball_display() {
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
}

Ball[] ball_liste = new Ball[anzahl];

void setup() {
  size (300, 300);
  colorMode(HSB, 360, 100, 100);
  noFill();
  stroke(200, 40, 100);

  for (int i = 0; i < anzahl; i++) {
    ball_liste[i] = new Ball();
  }
}

void draw() {
  background(200, 10, 10);

  for (int i = 0; i < anzahl-1; i++) {
    ball_liste[i].ball_display();
    ball_liste[i].ball_move();
    ball_liste[i].ball_checkRand();
  }
}

