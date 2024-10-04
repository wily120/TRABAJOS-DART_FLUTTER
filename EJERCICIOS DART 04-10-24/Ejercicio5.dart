import 'dart:io';

void main() {
  print("Ingrese el tamaño de las matrices (N):");
  int n = int.parse(stdin.readLineSync()!);
  List<List<int>> matriz1 = List.generate(n, (i) => List.filled(n, 0));
  List<List<int>> matriz2 = List.generate(n, (i) => List.filled(n, 0));
  List<List<int>> sumaMatriz = List.generate(n, (i) => List.filled(n, 0));
  print("Ingrese los elementos de la primera matriz:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print("Elemento [$i][$j]:");
      matriz1[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print("Ingrese los elementos de la segunda matriz:");
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      print("Elemento [$i][$j]:");
      matriz2[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      sumaMatriz[i][j] = matriz1[i][j] + matriz2[i][j];
    }
  }

  print("La matriz resultante de la suma es:");
  for (int i = 0; i < n; i++) {
    print(sumaMatriz[i]);
  }
}
