private Pou pou;
private Piso piso;
private Comida1 comida1;
PImage fondo;


public void setup(){
  size(600,900);

  pou = new Pou(); 
  pou.setPosicion(new PVector(width/2,height/2));
  pou.setVelocidad(new PVector(10,10));
  fondo = loadImage("fondo.jpg");
  piso = new Piso(7, 30); // Crear un nuevo objeto de la clase Piso con 10 filas y 10 columnas
  comida1 = new Comida1();

  
}

public void draw(){
  background(0);
  image(fondo,100,500,1000,1000);
    piso.dibujar(); // Llamar al método dibujar de la clase Piso para dibujar el piso

  pou.dibujar();
  actualizarVelocidadPou();
  
  comida1.dibujar();
  comida1.mover();
}

public void keyPressed(){
  if(key=='d'){
    pou.mover(1);
  }
  if(key=='a'){
    pou.mover(0);
  }
  
  if(key=='w'){
    pou.mover(2);
  }
  if(key=='s'){
    pou.mover(3);
  }
  
}

public void actualizarVelocidadPou(){
  if(pou.getPosicion().x>(width/2)){
    pou.getVelocidad().x=30;
  }else{
    pou.getVelocidad().x=10;
  }
}
