class Comida1 {
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  private float angulo; // rotación

  public Comida1() {
    imagen = loadImage("comida0.png");
    generarPosicionAleatoria();
    velocidad = new PVector(0, random(1, 2));
  }

  public Comida1(PVector posicion, PVector velocidad) {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.imagen = loadImage("comida0.png");
  }

  public void dibujar() {
    pushMatrix();
    translate(posicion.x, posicion.y);
    rotate(angulo); // rotación
    image(imagen, 0, 0, 100, 100);
    popMatrix();
  }

  public void mover() {
    if (posicion.y <= height) {
      posicion.y += velocidad.y;
      angulo += 0.1;
    } else {
      posicion.y = 0;
      generarPosicionAleatoria();
    }
  }

  // Método getter para angulo
  public float getAngulo() {
    return angulo;
  }

  // Método setter para angulo
  public void setAngulo(float angulo) {
    this.angulo = angulo;
  }

  private void generarPosicionAleatoria() {
    float x = random(width);
    float y = random(-200, -100);
    posicion = new PVector(x, y);
  }
}
