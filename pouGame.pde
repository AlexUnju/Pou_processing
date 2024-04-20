private Pou pou;
private Piso piso;
private Comida1 comida1;
private Comida2 comida2;
private Comida3 comida3;
private Comida4 comida4;
private Comida5 comida5;
private Fondo fondo;
private Nube nube;

public void setup(){
  size(600,900);
  //fondo
  fondo = new Fondo();
  fondo.setPosicion(new PVector(0,0));
  fondo.setAncho(1200);
  fondo.setAlto(1600);
  
  //pou
  pou = new Pou(); 
  pou.setPosicion(new PVector(width/2,height-100));
  pou.setVelocidad(new PVector(10,10));
  
  //piso
  piso = new Piso(7, 30); // Crear un nuevo objeto de la clase Piso con 30 filas y 7 columnas
  piso.setOffsetY(775); // Establecer offsetY en 775

  //comida
  comida1 = new Comida1();
  float anguloActual = comida1.getAngulo(); // angulo actual
  comida1.setAngulo(anguloActual + 0.1); // Aumentar radianes
  //comida2
  comida2 = new Comida2();
  float anguloActual2 = comida1.getAngulo(); 
  comida2.setAngulo(anguloActual2 + 0.1); //
  //comida3
  comida3 = new Comida3();
  float anguloActual3 = comida1.getAngulo();
  comida3.setAngulo(anguloActual3 + 0.1);
  //comida4
  comida4 = new Comida4();
  float anguloActual4 = comida4.getAngulo();
  comida4.setAngulo(anguloActual4 + 0.1);
  //comida5
  comida5 = new Comida5();
  float anguloActual5 = comida5.getAngulo();
  comida5.setAngulo(anguloActual5 + 0.1);
  
  //nube

  nube = new Nube(); // Crear una nueva instancia de Nube
  nube.setPosicion(new PVector(0,100));
  nube.setVelocidad(new PVector(2,0));
}

public void draw(){
  background(0);
  fondo.dibujar(); // Dibujar el fondo
  nube.dibujar();
  nube.mover();

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
