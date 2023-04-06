PImage img;
void setup (){ 
  size (800, 400);
  background(255 );
  img = loadImage("llave.jpg");
  img.resize(200,200);

}

void draw(){
 
  image (img,0,0);
println("el mouse esta en X " + mouseX ) ;println("el mouse esta en Y " + mouseY + ".");
fill(128, 128, 128);
rect(150,200,535,50); 
fill(255);
ellipse(600,220,30,30);
strokeWeight(0);
ellipse(610,220,30,30);
ellipse(630,220,30,30);
fill(128,128,128);
ellipse(150,220,150,150);
fill(255);
rect(71,200,60,50);
line(415,210,437,250);
line(445,210,463,244);
line(470,210,493,241);

}
