
//Datentyp für Bilder
PImage myPicture;

void setup () {
  size(800, 800);

  //das Bild muss geladen werden
  //muss im Data Folder drin sein
  myPicture = loadImage("hello.jpg");
}


void draw() {

  //image (Name, X Position, Y Position)
  image(myPicture, 20, 20);
}

