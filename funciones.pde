boolean zonadelrectangulo(int x, int y, int r) {
  return dist(mouseX, mouseY, x, y) <= r;
}
void boton(int x, int y, int btnWidth, int btnHeight) {
  noStroke();
  if (mouseX >= x && mouseX <= x + btnWidth && mouseY >= y && mouseY <= y + btnHeight) {
    fill(0,255,0);
  } else {
    fill(0); 
  }
  rect(x, y, btnWidth, btnHeight);
fill(255);
float circleSize = min(btnWidth, btnHeight) * 0.6;
float circleX = x + btnWidth / 2;
float circleY = y + btnHeight / 2;
ellipse(circleX, circleY, circleSize, circleSize);
}
void cambiar(int estado1, int x, int y, int d, int estado2) {
  if (estado == estado1 && zonadelrectangulo(x, y, d)) {
    estado = estado2;
  }
}
void reiniciar() {
  estado = 0;
}
void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciar();
  }
}
