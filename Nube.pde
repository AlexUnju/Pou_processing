class Nube {
  private PVector posicion;
  private PVector velocidad;
  private PImage imagenNube;
  private int direccion = 1; // 1 para mover hacia la derecha, -1 para mover hacia la izquierda

  // Constructor
  public Nube() {
    this.posicion = new PVector(0, 0); // Inicializar la posición
    this.velocidad = new PVector(0, 0); // Inicializar la velocidad
    this.imagenNube = loadImage("sprite_nube0.png");
  }

  public PVector getPosicion() {
    return posicion;
  }

  public void setPosicion(PVector posicion) {
    this.posicion = posicion;
  }

  public PVector getVelocidad() {
    return velocidad;
  }

  public void setVelocidad(PVector velocidad) {
    this.velocidad = velocidad;
  }

  public PImage getImagenNube() {
    return imagenNube;
  }

  public void setImagenNube(PImage imagenNube) {
    this.imagenNube = imagenNube;
  }

  public void dibujar() {
    image(imagenNube, posicion.x, posicion.y);
  }

  public void mover() {
    // Actualizar la posición según la velocidad y dirección
    posicion.add(PVector.mult(velocidad, direccion));

    if (posicion.x >= width || posicion.x <= 0) {
      direccion *= -1;
    }
  }
}
