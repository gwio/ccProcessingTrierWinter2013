//hier drin wird die Höhe der Balken gespeichert
float hoch;

void setup() {
  size(200, 400);
  frameRate(2);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  fill(210, 80, 80);
}



void draw() {
  background(55, 10, 100);


  //die Variable hoch bekommt jedes mal einen zufälligen Wert zwischen 10 und 300
  //deshalb hat jedes Rechteck bei jedem Frame eine zufällig Höhe
  hoch = random(10, 300);
  rect(20, 20, 10, hoch);

  hoch = random(10, 300);
  rect(20*2, 20, 10, hoch);

  hoch = random(10, 300);
  rect(20*3, 20, 10, hoch);

  hoch = random(10, 300);
  rect(20*4, 20, 10, hoch);

  hoch = random(10, 300);
  rect(20*5, 20, 10, hoch);

  hoch = random(10, 300);
  rect(20*6, 20, 10, hoch);

  hoch = random(10, 300);
  rect(20*7, 20, 10, hoch);

  hoch = random(10, 300);
  rect(20*8, 20, 10, hoch);
}

