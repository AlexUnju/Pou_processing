private Pou pou;
private Piso piso;
private Comida1 comida1;
private Comida2 comida2;
private Comida3 comida3;
private Comida4 comida4;
private Comida5 comida5;
private Fondo fondo;

public void setup(){
  size(600,900);
  fondo = new Fondo(); // No necesitas especificar la ruta de la imagen aquí
  pou = new Pou(); 
  pou.setPosicion(new PVector(width/2,height-100));
  pou.setVelocidad(new PVector(10,10));
  piso = new Piso(7, 30); // Crear un nuevo objeto de la clase Piso con 30 filas y 7 columnas
  comida1 = new Comida1();
  comida2 = new Comida2();
  comida3 = new Comida3();
  comida4 = new Comida4();
  comida5 = new Comida5();

}

public void draw(){
  background(0);
  fondo.dibujar(); // Dibujar el fondo

  piso.dibujar();

  pou.dibujar();
  actualizarVelocidadPou();
  
  comida1.dibujar();
  comida1.mover();
  
  comida2.dibujar();
  comida2.mover();  
  
  comida3.dibujar();
  comida3.mover();

  comida4.dibujar();
  comida4.mover();
  
  comida5.dibujar();
  comida5.mover();
}

public void keyPressed(){
  if(key=='d'){
    pou.mover(1);
  }
  if(key=='a'){
    pou.mover(0);
  }
}

public void actualizarVelocidadPou(){
  if(pou.getPosicion().x>(width/2)){
    pou.getVelocidad().x=30;
  }else{
    pou.getVelocidad().x=10;
  }
}
