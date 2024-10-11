import 'dart:io';

void main() {
  // Definir precios de los chocolates
  Map<String, double> preciosChocolates = {
    'Primor': 8.5,
    'Dulzura': 10.0,
    'Tentación': 7.0,
    'Explosión': 12.5
  };

  // Definir descuentos por cantidad de chocolates
  Map<String, double> descuentos = {
    '<5': 4.0,
    '5-9': 6.5,
    '10-14': 9.0,
    '>=15': 11.5
  };

  // Solicitar tipo de chocolate
  stdout.write('Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión): ');
  String? tipoChocolate = stdin.readLineSync();

  // Verificar si el tipo de chocolate es válido
  if (!preciosChocolates.containsKey(tipoChocolate)) {
    print('Tipo de chocolate no válido.');
    return;
  }

  // Solicitar la cantidad de chocolates
  stdout.write('Ingrese la cantidad de chocolates que desea comprar: ');
  int cantidadChocolates = int.parse(stdin.readLineSync()!);

  // Calcular el importe total antes del descuento
  double precioUnitario = preciosChocolates[tipoChocolate]!;
  double importeTotal = precioUnitario * cantidadChocolates;

  // Calcular el porcentaje de descuento basado en la cantidad de chocolates
  double porcentajeDescuento = 0;

  if (cantidadChocolates < 5) {
    porcentajeDescuento = descuentos['<5']!;
  } else if (cantidadChocolates >= 5 && cantidadChocolates < 10) {
    porcentajeDescuento = descuentos['5-9']!;
  } else if (cantidadChocolates >= 10 && cantidadChocolates < 15) {
    porcentajeDescuento = descuentos['10-14']!;
  } else if (cantidadChocolates >= 15) {
    porcentajeDescuento = descuentos['>=15']!;
  }

  // Calcular el importe del descuento
  double importeDescuento = (importeTotal * porcentajeDescuento) / 100;

  // Calcular el importe final a pagar
  double importeFinal = importeTotal - importeDescuento;

  // Determinar la cantidad de caramelos de obsequio
  int caramelosPorChocolate = importeTotal >= 250 ? 3 : 2;
  int caramelosObsequio = caramelosPorChocolate * cantidadChocolates;

  // Mostrar los resultados
  print('Importe total antes del descuento: S/ $importeTotal');
  print('Porcentaje de descuento aplicado: $porcentajeDescuento%');
  print('Importe del descuento: S/ $importeDescuento');
  print('Importe final a pagar: S/ $importeFinal');
  print('Cantidad de caramelos de obsequio: $caramelosObsequio');
}
