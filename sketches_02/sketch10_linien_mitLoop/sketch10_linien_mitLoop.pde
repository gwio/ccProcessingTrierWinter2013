void setup() {
  size(500, 500);
  stroke(0, 0, 0);
}


void draw() {

  background(255, 255, 255);

  //for Loop!
  // int i ist die Startposition für den Loop, hier ist es 0; i <= 9 ist die Bedingung,
  // also weil wir 9 Linien haben wollen, soll der Loop bis 9 gehen, i++ bedeutet, dass wenn
  // die Bedingung ( i <= 9 ) erfüllt ist, dann erhöht sich i um 1.
  // hier z.b. 0,1,2,3,4,5,6,7,8,9
  for (int i = 0; i <= 9; i++) {
    //die Variable i kann man dann für die Position der Linie benutzen
    line(50*i, 0, 50*i, height);
  }
}

