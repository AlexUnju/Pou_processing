class Piso {
  int filas;
  int columnas;
  int tamCelda;
  int offsetY = 775; // Definir un desplazamiento vertical


  Piso(int filas, int columnas) {
    this.filas = filas;
    this.columnas = columnas;
    tamCelda = width / columnas;
  }

  void dibujar() {
    noStroke();
    for (int fila = 0; fila < filas; fila++) {      
      for (int columna = 0; columna < columnas; columna++) {
        int x = columna * tamCelda;
        int y = fila * tamCelda + offsetY; //desplazamiento vertical
        if (fila % 2 == 0) {
          //fila rojo y rosa
          if (columna % 2 == 0) {
            fill(#a71517); //rojo
          } else {
            fill(#d597a5); //rosa
          }
        } else {
          // fila rosa y blanco
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
