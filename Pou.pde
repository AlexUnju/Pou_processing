class Pou{
  private PVector posicion;
  private PImage imagen_pou;
  private PVector velocidad;
  
  // CONSTRUCTOR 
  public Pou(){
    imagen_pou = loadImage("pou.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagen_pou,posicion.x,posicion.y,210,200);
  }

  public void mover(int direccion){
    if(direccion==0){
      this.posicion.x-=this.velocidad.x;
    }
    if(direccion==1){
      this.posicion.x+=this.velocidad.x;
    }
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  
}
 
