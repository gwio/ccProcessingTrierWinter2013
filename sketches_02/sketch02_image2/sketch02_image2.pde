
//Datentyp für Bilder
PImage myPicture;

void setup () {
  size(500, 500);

  //das Bild muss geladen werden
  //muss im Data Folder drin sein
  myPicture = loadImage("hello.jpg");
}


void draw() {
  background(255, 255, 255);

  //image (Name, X Position, Y Position, Breite, Höhe)
  //Wie fill() und stroke() Farben für Grundelemente definieren
  //färbt tint() bilder ein
  tint(255, 0, 0);
  image(myPicture, 20, 20, 200, 200);

  tint(0, 255, 0);
  image(myPicture, 20+100, 20+100, 200, 200);

  tint(0, 0, 255);
  image(myPicture, 20+100+100, 20+100+100, 200, 200);
}

