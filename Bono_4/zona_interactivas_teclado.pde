int size = 200;

int centroHorizontal;
int centroVertical;

void setup() {
  size(1000, 1000);
  centroHorizontal = width / 2;
  centroVertical = height / 2;
}

void draw() {
  background(128, 0, 64);
  noStroke();

  if ((keyPressed == true) && ((key == ' ') || (key == 'C'))) {
    fill(235, 192, 185);
    println("Inicio de zona interactiva");
  } else {
    fill(255);
  }

  rectMode(CENTER);
  rect(centroHorizontal, centroVertical, size, size);
}
