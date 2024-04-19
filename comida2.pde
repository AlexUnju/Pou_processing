class Comida2{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  private float angulo;

  
  public Comida2(){
    imagen = loadImage("comida1.png");
    generarPosicionAleatoria();
    velocidad = new PVector(0, random(1, 5));
  }
  
  public Comida2(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.imagen = loadImage("comida1.png");
  }
  
  public void dibujar(){
    pushMatrix();
    translate(posicion.x, posicion.y);
    rotate(angulo);
    image(imagen, 0, 0, 100, 100);
    popMatrix();
    
  }
  
  public void mover(){
    if(posicion.y <= height){
      posicion.y += velocidad.y;
      angulo += 0.1;

    } else {
      posicion.y = 0;
      generarPosicionAleatoria();
    }
  }
  
  private void generarPosicionAleatoria(){
    float x = random(width);
    float y = random(-200, -100);
    posicion = new PVector(x, y);
  }
}
