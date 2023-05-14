//Bernal Gaspar
//91499/4

int pantalla = 0;
int contador = 0;
PImage imagen1;
PImage imagen2;
PImage imagen3;

void setup() {
  size(640, 480);
  smooth();
  imagen1 = loadImage("martillo.png");
  imagen2 = loadImage("destornillador.jpg");
  imagen3 = loadImage("alicate.jpg");
}

void draw() {
  background(0);
  
  switch (pantalla) {
    case 0:
      image(imagen1, 50, 50, 150, 350);
      contador++;
      println("Estado 1:", contador);
      if (contador >= 500) {
        contador = 0;
        pantalla = 1;
      }
      fill(250, 0, 0, contador);
      textSize(55);
      textAlign(CENTER, CENTER);
      text("Martillo", width/2, height/2);
      break;
      
    case 1:
      image(imagen2, 0, 0, width, height);
      contador++;
      println("Estado 2:", contador);
      if (contador >= 500) {
        contador = 0;
        pantalla = 2;
      }
      fill(0, 0, 0);
      textSize(45);
      textAlign(CENTER, CENTER);
      text("Destornillador", mouseX, mouseY);
      break;
      
    case 2:
      image(imagen3, 0, 0, width, height);
      contador++;
      println("Estado 3:", contador);
      if (contador >= 800) {
        contador = 0;
        pantalla = 3;
      }
      fill(0, 0, 255, contador);
      textSize(100);
      textAlign(CENTER, CENTER);
      text("Alicate", width/2, height/2);
      break;
  }
}
