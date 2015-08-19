
size(400, 1000);
colorMode(HSB, 360, 100, 100);

//Hintergrund schwarz
background(0, 0, 0);

//zeichnet nur die Outline
noFill();
stroke(20, 200, 200, 150);
ellipse(200, 300, 150, 150);

//zeichnet die Füllfarbe
fill(20, 60, 60, 150);
noStroke();
ellipse(200, 400, 100, 100);

//wechselt die Füllfarbe
fill(30, 100, 90, 150);
ellipse(200, 500, 150, 150);

//wechselt die Füllfarbe
fill(0, 0, 100, 150);
ellipse(200, 600, 100, 100);

//zeichnet wieder nur eine Outline
noFill();
stroke(120, 20, 100, 150);
ellipse(200, 750, 230, 230);
ellipse(200, 750, 200, 200);

