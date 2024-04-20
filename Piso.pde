class Piso {
  private int filas;
  private int columnas;
  private int tamCelda;
  private int offsetY;

  Piso(int filas, int columnas) {
    this.filas = filas;
    this.columnas = columnas;
    this.tamCelda = width / columnas;
  }

  public int getFilas() {
    return filas;
  }

  public void setFilas(int filas) {
    this.filas = filas;
  }

  public int getColumnas() {
    return columnas;
  }

  public void setColumnas(int columnas) {
    this.columnas = columnas;
  }

  public int getTamCelda() {
    return tamCelda;
  }

  public void setTamCelda(int tamCelda) {
    this.tamCelda = tamCelda;
  }

  public int getOffsetY() {
    return offsetY;
  }

  public void setOffsetY(int offsetY) {
    this.offsetY = offsetY;
  }

  void dibujar() {
    noStroke();
    for (int fila = 0; fila < filas; fila++) {      
      for (int columna = 0; columna < columnas; columna++) {
        int x = columna * tamCelda;
        int y = fila * tamCelda + offsetY;
        if (fila % 2 == 0) {
          if (columna % 2 == 0) {
            fill(#a71517); //rojo
          } else {
            fill(#d597a5); //rosa
          }
        } else {
          if (columna % 2 == 0) {
            fill(#d597a5); //rosa
          } else {
            fill(#fffdff); //blanco
          }
        }
        rect(x, y, tamCelda, tamCelda);
      }
    }
  }
}
