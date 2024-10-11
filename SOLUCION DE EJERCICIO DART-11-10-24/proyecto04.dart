import 'dart:io';

void main() {
  // Definimos los precios de los productos
  const double precioP1 = 15.0;
  const double precioP2 = 17.5;
  const double precioP3 = 20.0;

  // Pedimos al usuario que ingrese el tipo de producto
  print('Ingrese el tipo de producto (P1, P2, P3): ');
  String? producto = stdin.readLineSync();

  // Pedimos al usuario que ingrese la cantidad de unidades
  print('Ingrese la cantidad de unidades adquiridas: ');
  int? cantidad = int.tryParse(stdin.readLineSync()!);

  if (producto != null && cantidad != null) {
    double totalPagar = 0.0;
    String regalo = '';

    // Calculamos el importe a pagar según el tipo de producto
    switch (producto) {
      case 'P1':
        totalPagar = precioP1 * cantidad;
        break;
      case 'P2':
        totalPagar = precioP2 * cantidad;
        break;
      case 'P3':
        totalPagar = precioP3 * cantidad;
        break;
      default:
        print('Producto no válido');
        return;
    }

    // Determinamos el regalo según la cantidad adquirida
    if (cantidad < 26) {
      regalo = 'Un lapicero';
    } else if (cantidad >= 26 && cantidad <= 50) {
      regalo = 'Un cuaderno';
    } else {
      regalo = 'Una agenda';
    }

    // Mostramos el total a pagar y el regalo
    print('Total a pagar: S/ $totalPagar');
    print('Regalo: $regalo');
  } else {
    print('Datos ingresados no válidos');
  }
}
