// BERNAL GASPAR COMISION 5 NUMERO DE LEGAJO 91499/4
// P PARA JUGAR 
// R PARA REINICIAR
// F PARA VER CRÉDITOS
// P PARA VOLVER A JUGAR EN PANTALLA DE CREDITO
// https://www.youtube.com/watch?v=PsfUIVcSkZY&ab_channel=GaspiB
let pantallaActual = "inicio";
let laberinto = [];
let cant = 15;
let tam;
let px, py;
let circulo;
let triangulos = [];
let ganaste = false;
let contadorSegundos = 0;
let contadorActivo = true;
let inicioContador = 0;
let perdiste = false;
let imagenes = [];

function preload() {
  imagenes[0] = loadImage('data/inicio.png');
  imagenes[1] = loadImage('data/fin.png');
}

function setup() {
  createCanvas(600, 600);
  tam = width / cant;
  circulo = tam * 0.8;
  crearLaberinto();
  px = 1;
  py = 1;

  triangulos = []; 
  for (let i = 0; i < 30; i++) {
    let x, y;
    do {
      x = floor(random(cant));
      y = floor(random(cant));
    } while (laberinto[x][y] === 1);
    triangulos.push(createVector(x, y)); 
  }

  frameRate(60);
  inicioContador = millis();
}

function keyPressed() {
  if (pantallaActual === "juego") {
    if (keyCode === RIGHT_ARROW && laberinto[px + 1][py] === 0 && px < cant - 1) {
      px++;
    }
    if (keyCode === LEFT_ARROW && laberinto[px - 1][py] === 0 && px > 0) {
      px--;
    }
    if (keyCode === UP_ARROW && laberinto[px][py - 1] === 0 && py > 0) {
      py--;
    }
    if (keyCode === DOWN_ARROW && laberinto[px][py + 1] === 0 && py < cant - 1) {
      py++;
    }

    if (key === 'r' || key === 'R') {
      reiniciarJuego();
    }
  }
}

function draw() {
  background(255);

  if (pantallaActual === "inicio") {
    mostrarPantallaDeInicio();
  } else if (pantallaActual === "juego") {
    if (contadorActivo && !perdiste) {
      let tiempoTranscurrido = floor((millis() - inicioContador) / 1000);
      contadorSegundos = tiempoTranscurrido;

      if (contadorSegundos >= 30) { 
        perdiste = true;
        contadorActivo = false;
      }
    }

    mostrarPantallaDeJuego();
  } else if (pantallaActual === "creditos") {
    mostrarPantallaDeCreditos();
  }
}

function mostrarPantallaDeInicio() {
  background(255);
  image(imagenes[0], 0, 0);
  fill(255);
  textSize(18);
  textAlign(LEFT, TOP);
  text("Deberás mover el círculo rojo con las flechitas de tu teclado!", 20, 130);
  textAlign(LEFT, CENTER);
  text("Tendrás que agarrar todos los triángulos rosados y escapar!", 20, 200);
  text("Dispones de 30 segundos para ganar, ¿serás capaz?", 20, 260); 
  textSize(20);
  textAlign(LEFT, CENTER);
  text("Presiona 'p' para comenzar el juego", 110, 345);
}

function mostrarPantallaDeJuego() {
  if (contadorActivo && !perdiste) {
    let tiempoTranscurrido = floor((millis() - inicioContador) / 1000);
    contadorSegundos = tiempoTranscurrido;

    if (contadorSegundos >= 60) {
      perdiste = true;
      contadorActivo = false;
    }
  }

  fill(255);
  textSize(20);
  textAlign(LEFT, TOP);
  text("Tiempo: " + contadorSegundos + " segundos", 10, 20);

  for (let i = 0; i < cant; i++) {
    for (let j = 0; j < cant; j++) {
      if (laberinto[i][j] === 1) {
        fill(0, 255, 100);
      } else {
        fill(0, 0, 255);
      }
      rect(i * tam, j * tam, tam, tam);
    }
  }

  let ganar = true;

  for (let i = triangulos.length - 1; i >= 0; i--) { 
    let trianguloX = triangulos[i].x; 
    let trianguloY = triangulos[i].y; 

    if (px === trianguloX && py === trianguloY) { 
      triangulos.splice(i, 1); 
    }

    if (triangulos.length > 0) { 
      ganar = false;
    }
  }

  if (ganar) {
    ganaste = true;
    contadorActivo = false;
  }

  if (ganaste) {
    fill(0, 255, 0);
    rect(width / 4, height / 4, width / 2, height / 2);
    fill(0);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("¡Ganaste!", width / 2, height / 2);
    textSize(20);
    text("Presiona 'f' para ver los créditos", width / 2, height / 2 + 50);
  } else if (perdiste) {
    fill(255, 0, 0);
    rect(width / 4, height / 4, width / 2, height / 2);
    fill(0);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("¡Perdiste!", width / 2, height / 2);
    textSize(20);
    text("Presiona 'f' para ver los créditos", width / 2, height / 2 + 50);
  } else {
    fill(255, 0, 0);
    ellipse(px * tam + tam / 2, py * tam + tam / 2, circulo);

    fill(255, 204, 204);
    const offset = tam / 6;
    for (let i = 0; i < triangulos.length; i++) { 
      let trianguloX = triangulos[i].x; 
      let trianguloY = triangulos[i].y; 
      triangle(
        trianguloX * tam + tam / 2, trianguloY * tam + offset,
        trianguloX * tam + offset, trianguloY * tam + tam - offset,
        trianguloX * tam + tam - offset, trianguloY * tam + tam - offset
      );
    }
  }

  fill(0);
  rect(5, 5, 160, 30);
  fill(255);
  textSize(14);
  textAlign(LEFT, TOP);
  text("Te quedan: " + (30 - contadorSegundos) + " segundos", 10, 15); // Cambio aquí, 30 segundos en lugar de 40
}

function mostrarPantallaDeCreditos() {
  image(imagenes[1], 0, 0);
  fill(255);
  textSize(34);
  textAlign(CENTER, CENTER);
  text("Créditos", 280, 100);
  textSize(24);
  textAlign(LEFT, CENTER);
  text("Trabajo de Gaspar Bernal", 10, 225);
  text("Comisión 5", 10, 295);
}

function cambiarPantalla(nuevaPantalla) {
  pantallaActual = nuevaPantalla;

  
  if (pantallaActual === "juego") {
    contadorActivo = true;
    inicioContador = millis();
  }
}

function reiniciarJuego() {
  px = 1;
  py = 1;
  contadorSegundos = 0;
  contadorActivo = true;
  inicioContador = millis();
  perdiste = false;
  ganaste = false;
  triangulos = [];  
  for (let i = 0; i < 30; i++) { 
    let x, y;
    do {
      x = floor(random(cant));
      y = floor(random(cant));
    } while (laberinto[x][y] === 1);
    triangulos.push(createVector(x, y)); 
  }
}

function crearLaberinto() {
  

  for (let i = 0; i < cant; i++) {
    laberinto[i] = [];
    for (let j = 0; j < cant; j++) {
      laberinto[i][j] = 0;
    }
  }

  
  for (let i = 0; i < cant; i++) {
    laberinto[i][0] = 1;
    laberinto[i][cant - 1] = 1;
    laberinto[0][i] = 1;
    laberinto[cant - 1][i] = 1;
  }


  laberinto[2][2] = 1;
  laberinto[2][3] = 1;
  laberinto[3][3] = 1;
  laberinto[4][3] = 1;
  laberinto[5][3] = 1;
  laberinto[6][3] = 1;
  laberinto[6][4] = 1;
  laberinto[6][5] = 1;
  laberinto[5][5] = 1;
  laberinto[4][5] = 1;
  laberinto[4][6] = 1;
  laberinto[4][7] = 1;
  laberinto[5][7] = 1;
  laberinto[8][8] = 1;
  laberinto[9][8] = 1;
  laberinto[9][9] = 1;
  laberinto[10][9] = 1;
  laberinto[10][10] = 1;
  laberinto[11][2] = 1;
  laberinto[11][1] = 1;
   laberinto[11][11] = 1;
   laberinto[12][2] = 1;
    laberinto[12][3] = 1;
    laberinto[2][12] = 1;
     laberinto[2][11] = 1;
     laberinto[2][10] = 1;
      laberinto[3][10] = 1;
       laberinto[4][10] = 1;
         laberinto[11][1] = 1;
  
  laberinto[1][1] = 0;
  laberinto[cant - 2][cant - 2] = 0;
}

function keyTyped() {
  if (key === 'f' || key === 'F') {
    cambiarPantalla("creditos");
  } else if (key === 'p' || key === 'P') {
    cambiarPantalla("juego");
    reiniciarJuego();
  } else if (key === 'r' || key === 'R') {
    reiniciarJuego();
  } else if (key === 's' || key === 'S') {
    
  }
}
