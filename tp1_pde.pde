//Bernal Gaspar 91499/4
//Trabajo práctico #1 - Animando con código
//Se reinicia con enter
 
 //Variables
 int posX;
 PFont Mifuente;
 String p1, p2, p3, p4, p5, musik, musik2, direc, direc2, fin;
 PImage portada, personajes, personajes2, musica, directores, termino;

  
  void setup(){
    size(600,400);
    Mifuente= loadFont("Georgia-Bold-48.vlw");
  //IMAGENES
    portada= loadImage ("portada.png");
 personajes=loadImage ("personajes.png");
 personajes2=loadImage("secundarios.png");
 musica=loadImage("musicado.png");
 directores=loadImage("directores.png");
 termino=loadImage("termino.png");
 //TEXTOS
 
    p1= "8 MILES";
    p2= "Personajes Principales";
    p3= "Eminem \n Kim Basinger \n Brittany Murphy \n Mekhi Phifer \n Evan Jones \n Omar Benson Miller \n Eugene Byrd ";
    p4= "Personajes Secundarios";
    p5= "Anthony Mackie \n Taryn Manning \n Michael Shannon \n Chloe Greenfield \n Craig Chandler \n Xzibit";
    musik= "MUSICA";
    musik2= "Love yourself \n Love Me \n 8 mile \n Adrenaline Rush \n Rap Game \n 8 miles and Running";
    direc = "Director";
    direc2 = "Curtis Hanson";
    fin= "FIN.";

  }
  void draw(){
   //PORTADAPELICULA
   println ( frameCount );
   imageMode(CENTER);
image(portada,width/2, height/2, 600, 400);
  textFont (Mifuente); 
  fill (255, 255, 0); 
  textAlign (CENTER, CENTER);
  text(p1,200,300);
  textSize(82);
  frameRate (1);
  //PANTALLA 2
  if ( frameCount >= 5 ) {
    image (personajes, width/2, height/2, width, height);
    textSize (40);
    text (p2,300,200);
    textSize(18);
   text (p3,300,300);}
  //PNTALLA3
    if ( frameCount >= 13){
    image (personajes2 , width/2, height/2, width, height);
    textSize (32);
    text (p4,300,20);
    textSize (18);
    text (p5, 300, 110);
  }
  //MUSICA DE LA PELICULA
   if ( frameCount >= 18 ) {
    image (musica, width/2, height/2, width, height);
    textSize (24);
    text (musik,200,90);
    textSize (16);
    text (musik2,200,170);
  }
  //PRODUCTOR
  if ( frameCount >=24) {
    image (directores, width/2, height/2, width, height);
    textSize (40);
    text (direc, 300, 110);
    textSize (68);
    text (direc2, 300, 250);}
    //FINAL
      if ( frameCount >=27 ) {
    image (termino , width/2, height/2, width, height);
    textSize (60);
    text (fin,450,posX+300);
    posX-=9; }}
    //REINICIAR
void keyPressed () {
  if (key == ENTER) {
    frameCount = 0;
  }
  }
