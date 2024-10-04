import 'dart:io';

void main() {
  print("Ingrese el tamaño de la matriz en espiral:");
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz = List.generate(n, (i) => List.filled(n, 0));
  int valor = 1, inicioFila = 0, finFila = n - 1, inicioCol = 0, finCol = n - 1;

  while (inicioFila <= finFila && inicioCol <= finCol) {
    for (int i = inicioCol; i <= finCol; i++) matriz[inicioFila][i] = valor++;
    inicioFila++;
    for (int i = inicioFila; i <= finFila; i++) matriz[i][finCol] = valor++;
    finCol--;
    if (inicioFila <= finFila) {
      for (int i = finCol; i >= inicioCol; i--) matriz[finFila][i] = valor++;
      finFila--;
    }
    if (inicioCol <= finCol) {
      for (int i = finFila; i >= inicioFila; i--) matriz[i][inicioCol] = valor++;
      inicioCol++;
    }
  }
  print("Matriz en espiral:");
  for (var fila in matriz) {
    print(fila);
  }
}
