//Bernal Gaspar
//Nro de legajo: 91499/4
// Link a Youtube: https://www.youtube.com/watch?v=23386WhCMgA&ab_channel=GaspiB
int estado = 0;
int c = 14;
PImage[] cuento = new PImage[c];

void setup() {
  size(600, 600);
  for (int i = 0; i < c; i++) {
    cuento[i] = loadImage("cuento" + i + ".jpg");
  }

  textSize(20);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
}

void draw() {
  switch (estado) {
    case 0:
      image(cuento[0], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(200, 500, 200, 100);
      fill(255);
      text("El Sastrecillo Valiente", 10, 500, 580, 100);
      fill(0,0,255);
      rect(0, 290, 250, 100);
      fill(255);
      text("Cuando termines de leer, puedes reiniciar oprimiendo la tecla R", 0, 290, 250, 100);
      boton(480, 480, 100, 60);
      break;
    case 1:
      image(cuento[1], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(30, 400, 540, 60);
      fill(255);
      text("Había una vez un  sastre que vivía en un pequeño pueblo",30, 400, 540, 60);
      boton(480, 480, 100, 60);
      break;
    case 2:
      image(cuento[2], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(80, 10, 500, 40);
      fill(255);
      text("El sastrecillo tenía fama de ser muy valiente y astuto", 299, 20);
      fill(0,0,255);
      rect(10, 420, 400, 150);
      fill(255);
      text("Un día, llegó al pueblo una noticia aterradora: un gigante estaba aterrorizando a todos los habitantes", 10, 350, 400, 300);
      boton(480, 480, 100, 60);
      break;
    case 3:
      image(cuento[4], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(10, 10, 400, 70);
      fill(255);
      text("El sastrecillo decidió enfrentarse al gigante para salvar a su pueblo", 10, 10, 400, 80);
      boton(480, 480, 100, 60);
      break;
    case 4:
      image(cuento[3], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(10, 10, 580, 80);
      fill(255);
      text("Con valentía y astucia, el sastrecillo pensaba cómo podría derrotar al gigante", 10, 10, 580, 80);
      fill(0,0,255);
      rect(80, 215, 240, 30);
      rect(75, 380, 300, 60);
      rect(200, 490, 250, 100);
      fill(255);
      text("¿Que decision tomaras?", 200, 225);
      fill(255);
      text("Enfrentar al gigante en una batalla a muerte", 60, 380, 350, 70);
      text("Usar su ingenio para engañar al gigante y volver como un héroe a su pueblo", 200, 490, 250, 100);
      boton(490, 375, 70, 40);
      boton(490, 475, 70, 40);
      break;
    case 7:
      image(cuento[5], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(10, 15, 580, 50);
      fill(255);
      text("El sastrecillo decide ir a buscar a la cueva al gigante", 10, 15, 580, 50);
      boton(480, 480, 100, 60);
      break;
    case 8:
      image(cuento[6], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(10, 400, 580, 80);
      fill(255);
      text("El sastrecillo decidió ir a buscar al gigante pero siendo muy precavido y con algunas estrategias pensadas", 10, 400, 580, 80);
      boton(480, 480, 100, 60);
      break;
    case 9:
      image(cuento[7], width/2, height/2, 600, 600);
      textAlign(CENTER);
      fill(0,0,255);
      rect(10, 400, 580, 90);
      fill(255);
      text("El sastrecillo, al llegar, quedó completamente atemorizado al ver al gigante, ya que su espada era muy pequeña en comparación con su enemigo", 10, 400, 580, 100);
      boton(480, 480, 100, 60);
      break;
    case 10:
      image(cuento[8], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(10, 10, 580, 80);
      fill(255);
      text("El sastrecillo llegó a la cueva y esperó a que el gigante se durmiera para actuar", 10, 10, 580, 80);
      boton(480, 480, 100, 60);
      break;
    case 11:
      image(cuento[13], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(10, 10, 580, 80);
      fill(255);
      text("El gigante aprovechó la situación y le dio una paliza al sastrecillo para que volviera a su pueblo como una vergüenza y un mentiroso",10, 10, 580, 80);
      rect(400, 400, 100, 200);
      fill(0);
      text("¡Fin! Eres una vergüenza para tu pueblo!",400, 400, 100, 200);
      break;
    case 12:
      image(cuento[10], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(10, 10, 580, 80);
      rect(10, 470, 580, 80);
      rect(250, 260, 200, 65);
      fill(255);
      text("Esperar que el gigante se despierte y negociar gentilmente con él", 10, 10, 580, 80);
      text("Intentar arrojarle una piedra y hacer que se pelee con su hermano pensando que fue él quien la tiró", 10, 470, 580, 80);
      text("Debes elegir:", 250, 250, 200, 80);
      boton(550, 90, 70, 40);
      boton(550, 510, 70, 40);
      break;
    case 13:
      image(cuento[11], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(10, 400, 580, 80);
      fill(255);
      text("El gigante termina accediendo, ya que el sastrecillo le pidió amablemente que se fuera y le pagó con todos sus ahorros", 10, 400, 580, 80);
      boton(480, 480, 100, 60);
      break;
    case 14:
      image(cuento[9], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(10, 10, 580, 80);
      fill(255);
      text("El gigante termina cayendo en la trampa del sastrecillo y tiene una pelea a muerte con su hermano", 10, 10, 580, 80);
      fill(255);
      rect(290, 300, 200, 200);
      fill(0);
      text("Fin! ¡Vuelves al pueblo como un héroe!", 290, 300, 200, 200);
      break;
    case 15:
      image(cuento[12], width/2, height/2, 600, 600);
      fill(0,0,255);
      rect(10, 10, 580, 80);
      fill(255);
      text("¡Vuelves al pueblo como un héroe!", 10, 10, 580, 80);
      rect(290, 300, 200, 200);
      fill(0);
      text("¡Fin, eres un héroe, pero quedaste pobre!",290, 300, 200, 200);
      break;
  }
}

void mousePressed() {
  switch (estado) {
    case 0:
      if (zonadelrectangulo(530, 530, 100)) {
        estado = 1;
      }
      break;
    case 1:
      if (zonadelrectangulo(530, 530, 100)) {
        estado = 2;
      }
      break;
    case 2:
      if (zonadelrectangulo(530, 530, 100)) {
        estado = 3;
      }
      break;
    case 3:
      if (zonadelrectangulo(490, 375, 70)) {
        estado = 5;
      } else if (zonadelrectangulo(490, 475, 70)) {
        estado = 4;
      }
      break;
    case 4:
    if (zonadelrectangulo(490, 375, 70)) {
        estado = 7;
      } else if (zonadelrectangulo(490, 475, 70)) {
        estado = 8;
      }
      break;
    case 6:
      if (zonadelrectangulo(530, 530, 100)) {
        estado = 8;
      }
      break;
    case 7:
      if (zonadelrectangulo(530, 530, 100)) {
        estado = 9;
      }
      break;
    case 8:
      if (zonadelrectangulo(530, 530, 100)) {
        estado = 10;
      }
      break;
    case 9:
      if (zonadelrectangulo(530, 530, 100)) {
        estado = 11;
      }
      break;
    case 10:
      if (zonadelrectangulo(530, 530, 100)) {
        estado = 12;
      }
      break;
    case 11:
      if (zonadelrectangulo(530, 530, 100)) {
        estado = 11;
      }
      break;
    case 12:
      if (zonadelrectangulo(550, 90, 70)) {
        estado = 13;
      } else if (zonadelrectangulo(550, 510, 70)) {
        estado = 14;
      }
      break;
    case 13:
      if (zonadelrectangulo(480, 480, 100)) {
        estado = 15;
      }
      break;
    case 14:
      if (zonadelrectangulo(490, 375, 70)) {
        estado = 15;
      } else if (zonadelrectangulo(490, 475, 70)) {
        estado = 16;
      }
      break;
    case 15:
      if (zonadelrectangulo(480, 480, 100)) {
        estado = 17;
      }
      break;
  }
}
