class Fondo {
  private PImage imagenFondo;
  private PVector posicion;
  private int ancho;
  private int alto;

  public Fondo() {
    imagenFondo = loadImage("fondo.jpg");
  }

  public void dibujar() {
    image(imagenFondo,posicion.x,posicion.y);
  }
  
    public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
    public void setAncho(int ancho) {
    this.ancho = ancho;
    imagenFondo.resize(ancho, alto);
  }

  public void setAlto(int alto) {
    this.alto = alto;
    imagenFondo.resize(ancho, alto);
  }
  
}
