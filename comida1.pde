class Comida1{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  public Comida1(){
    imagen = loadImage("comida1.png");
  }
  
  public Comida1(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen = loadImage("comida1.png");
  }
  
  public void dibujar(){
    image(imagen,posicion.x,posicion.y,150,150);
  }
  
  public void mover(){
    if(this.posicion.y<=height){
      this.posicion.y+=this.velocidad.y;
    }else{
      this.posicion.y=0;
    }
    
  }
}
