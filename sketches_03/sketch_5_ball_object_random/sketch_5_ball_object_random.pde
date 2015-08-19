int anzahl = 10;

class Ball {

  //Variablen für die Position
  float posX;
  float posY;

  //Variablen für die Geschwindigkeit
  float tempoX;
  float tempoY;

  float dia;
  float farbe;

  Ball() {
    //Startposition und Starttempo
    posX = random(width);
    posY = random(height);

    tempoX = random(-5,5);
    tempoY = random(-5,5);
    
    dia = random(4,30);
    
    farbe = random(260,360);
  }

  //Funktion zum Zeichnen
  void ball_display() {
    noStroke();
    fill(farbe,80,80);
    ellipse(posX, posY, dia, dia);
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

