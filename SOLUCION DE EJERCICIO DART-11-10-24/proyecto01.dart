import 'dart:io';

void main() {
  // Definimos las pensiones según la categoría
  Map<String, double> pensiones = {
    'A': 550,
    'B': 500,
    'C': 460,
    'D': 400
  };

  // Definimos los descuentos según el promedio
  Map<String, double> descuentos = {
    '0-13.99': 0,
    '14-15.99': 10,
    '16-17.99': 12,
    '18-20': 15
  };

  // Solicitamos la categoría del estudiante
  stdout.write('Ingrese la categoría del estudiante (A, B, C, D): ');
  String? categoria = stdin.readLineSync()?.toUpperCase();
  // Verificamos que la categoría sea válida
  if (!pensiones.containsKey(categoria)) {
    print('Categoría no válida.');
    return;
  }

  // Solicitamos el promedio ponderado
  stdout.write('Ingrese el promedio ponderado del estudiante: ');
  double promedio = double.parse(stdin.readLineSync()!);
  // Determinamos el porcentaje de descuento según el promedio
  double porcentajeDescuento = 0;

  if (promedio >= 0 && promedio <= 13.99) {
    porcentajeDescuento = descuentos['0-13.99']!;
  } else if (promedio >= 14 && promedio <= 15.99) {
    porcentajeDescuento = descuentos['14-15.99']!;
  } else if (promedio >= 16 && promedio <= 17.99) {
    porcentajeDescuento = descuentos['16-17.99']!;
  } else if (promedio >= 18 && promedio <= 20) {
    porcentajeDescuento = descuentos['18-20']!;
  } else {
    print('Promedio no válido.');
    return;
  }

  // Calculamos la pensión actual del estudiante
  double pensionActual = pensiones[categoria]!;
  // Calculamos el monto de descuento
  double montoDescuento = (pensionActual * porcentajeDescuento) / 100;
  // Calculamos la nueva pensión
  double nuevaPension = pensionActual - montoDescuento;

  // Mostramos los resultados
  print('La pensión actual es: S/ $pensionActual');
  print('El descuento aplicado es: $porcentajeDescuento% (S/ $montoDescuento)');
  print('La nueva pensión es: S/ $nuevaPension');
}
