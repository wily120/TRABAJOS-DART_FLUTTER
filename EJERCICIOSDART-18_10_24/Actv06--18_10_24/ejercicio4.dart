import 'dart:io';

double obtenerPrecioProducto(String tipoProducto) {
  Map<String, double> precios = {
    'P1': 15.0,
    'P2': 17.5,
    'P3': 20.0,
  };

  return precios[tipoProducto] ?? 0;
}

String obtenerRegalo(int cantidad) {

  Map<String, String> regalos = {
    'lapicero': 'Un lapicero',
    'cuaderno': 'Un cuaderno',
    'agenda': 'Una agenda',
  };

  if (cantidad < 26) {
    return regalos['lapicero']!;
  } else if (cantidad <= 50) {
    return regalos['cuaderno']!;
  } else {
    return regalos['agenda']!;
  }
}

void main() {

  print("Ingrese el tipo de producto (P1, P2, P3):");
  String tipoProducto = stdin.readLineSync()!;

  print("Ingrese la cantidad de unidades adquiridas:");
  int cantidadUnidades = int.parse(stdin.readLineSync()!);

  double precioUnitario = obtenerPrecioProducto(tipoProducto);

  if (precioUnitario == 0) {
    print("Tipo de producto inválido.");
    return;
  }
  double importeAPagar = precioUnitario * cantidadUnidades;
  String regalo = obtenerRegalo(cantidadUnidades);
  print("Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}");
  print("Regalo: $regalo");
}
