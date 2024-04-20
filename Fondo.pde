class Fondo {
  private PImage imagenFondo;
  private static final String RUTA_IMAGEN = "fondo.jpg";

  public Fondo() {
    imagenFondo = loadImage(RUTA_IMAGEN);
  }

  public void dibujar() {
    image(imagenFondo,0,0);
    imagenFondo.resize(2000,2000);
  }
}
