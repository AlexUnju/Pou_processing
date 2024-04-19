class Piso {
  int filas=20;
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
        int y = fila * tamCelda + offsetY; // Agregar el desplazamiento vertical
        if (fila % 2 == 0) {
          // Para filas pares, alternar entre rojo y blanco
          if (columna % 2 == 0) {
            fill(#a71517); //rojo
          } else {
            fill(#d597a5); //rosa
          }
        } else {
          // Para filas impares, alternar entre rojo y rosado
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
