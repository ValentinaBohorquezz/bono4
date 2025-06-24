int centroHorizontal;
int centroVertical;

int posBordeSuperior;
int posBordeInferior;
int posBordeIzquierdo;
int posBordeDerecho;

int tam = 200;  // Tamaño del rectángulo

void setup() {
  size(1000, 1000);
  centroHorizontal = width / 2;
  centroVertical = height / 2;
}

void draw() {
  background(128, 0, 64);
  noStroke();

  posBordeSuperior = centroVertical - (tam / 2);
  posBordeInferior = centroVertical + (tam / 2);
  posBordeIzquierdo = centroHorizontal - (tam / 2);
  posBordeDerecho = centroHorizontal + (tam / 2);

  if (mouseX > posBordeIzquierdo &&
      mouseX < posBordeDerecho &&
      mouseY > posBordeSuperior &&
      mouseY < posBordeInferior) {
    fill(235, 192, 185);
    println("Inicio de zona interactiva");
  } else {
    fill(185, 150, 120);
  }

  rectMode(CENTER);
  rect(centroHorizontal, centroVertical, tam, tam);
}
