
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

Ball meinBall1;
Ball meinBall2;
Ball meinBall3;

void setup() {
  size (300, 300);
  colorMode(HSB, 360, 100, 100);
  noFill();
  stroke(200, 40, 100);

   meinBall1 = new Ball();
   meinBall2 = new Ball();
   meinBall3 = new Ball();
}

void draw() {
  background(200, 10, 10);

  meinBall1.ball_display();
  meinBall1.ball_move();
  meinBall1.ball_checkRand();

  meinBall2.ball_display();
  meinBall2.ball_move();
  meinBall2.ball_checkRand();

  meinBall3.ball_display();
  meinBall3.ball_move();
  meinBall3.ball_checkRand();
}

