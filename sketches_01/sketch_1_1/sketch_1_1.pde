background(255, 255, 255);
size(1000, 1000);
smooth();
strokeWeight(12);
int step = 10;
float abstand = 120;
float plus = abstand/2;


translate(width/2, height/2);
for (int i = 1; i < step+1; i++) {

  if (i%2==0) {
    stroke(33, 232, 230);
  } 
  else {
    stroke(118, 10, 108);
  }

  line(0, 0, 0, -abstand);
  translate(0, -abstand);

  rotate((TWO_PI/4));
  abstand += plus;
}

