import 'dart:io';

void main(List<String> arguments) {
  List<String> categorias = ['A', 'B', 'C', 'D'];
  List<int> precios = [550, 500, 460, 400];

  print("Ingrese su Categoría (A, B, C, D):");
  stdout.write('Introduce tu Categoría: ');
  String categoriaString = stdin.readLineSync()?.toUpperCase() ?? '';

  stdout.write('Introduce tu Nota: ');
  String notaString = stdin.readLineSync() ?? '';
  double nota = double.tryParse(notaString) ?? 0;

  // Evaluar la categoría y calcular el resultado
  double resultado = evaluar(categoriaString, nota, categorias, precios);

  if (resultado != -1) {
    print('El monto a pagar es: \$${resultado.toStringAsFixed(2)}');
  } else {
    print('Categoría no reconocida.');
  }
}

double evaluar(String categoria, double nota, List<String> categorias, List<int> precios) {
  int index = categorias.indexOf(categoria);
  if (index == -1) {
    return -1;
  }
  double precioBase = precios[index].toDouble();

  if (nota < 14) {
    return precioBase;
  } else if (nota < 16) {
    return precioBase * 0.9;
  } else if (nota < 18) {
    return precioBase * 0.88;
  } else {
    return precioBase * 0.85;
  }
}
