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
  background(200, 10, 10);

  //zeichnet die Kugel mit den Variablen
  ellipse(posX, posY, 50, 50);

  //verändert die Position der Kugel indem es für X und Y das Tempo dazugibt
  //man könnte auch posX += tempoX schreiben
  posX = posX + tempoX;
  posY = posY + tempoY;


  if ( (posX > width) || (posX < 0) ) {
    //jedes mal wenn die Kugel den rechten oder! linken Rand berührt wechselt die Richtung
    //tempoX*=-1 ginge auch
    tempoX = tempoX * -1;
  }

  if ( (posY > height) || (posY < 0) ) {
    //jedes mal wenn die Kugel den oberen oder! unteren Rand berührt wechselt die Richtung
    //tempoY*=-1 ginge auch
    tempoY = tempoY * -1;
  }
}

