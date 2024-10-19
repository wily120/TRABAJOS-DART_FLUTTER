import 'dart:io';

double obtenerPrecioChocolate(String tipoChocolate) {
  Set<String> tiposChocolatesValidos = {'Primor', 'Dulzura', 'Tentación', 'Explosión'};

  if (!tiposChocolatesValidos.contains(tipoChocolate)) {
    return 0;
  }

  Map<String, double> precios = {
    'Primor': 8.5,
    'Dulzura': 10.0,
    'Tentación': 7.0,
    'Explosión': 12.5,
  };

  return precios[tipoChocolate] ?? 0;
}

double obtenerDescuento(int cantidad) {
  if (cantidad < 5) {
    return 0.04;
  } else if (cantidad < 10) {
    return 0.065;
  } else if (cantidad < 15) {
    return 0.09;
  } else {
    return 0.115;
  }
}

int calcularCaramelos(int cantidadChocolates, double importeAPagar) {
  if (importeAPagar >= 250) {
    return cantidadChocolates * 3;
  } else {
    return cantidadChocolates * 2;
  }
}

void main() {
  print(
      "Ingrese el tipo de chocolate (Primor, Dulzura, Tentación, Explosión):");
  String tipoChocolate = stdin.readLineSync()!;

  print("Ingrese la cantidad de chocolates:");
  int cantidadChocolates = int.parse(stdin.readLineSync()!);

  double precioUnitario = obtenerPrecioChocolate(tipoChocolate);

  if (precioUnitario == 0) {
    print("Tipo de chocolate inválido.");
    return;
  }

  double importeCompra = precioUnitario * cantidadChocolates;

  double descuento = obtenerDescuento(cantidadChocolates);
  double importeDescuento = importeCompra * descuento;
  double importeAPagar = importeCompra - importeDescuento;
  int caramelosObsequio = calcularCaramelos(cantidadChocolates, importeAPagar);

  print("Importe de la compra: S/. ${importeCompra.toStringAsFixed(2)}");
  print("Importe del descuento: S/. ${importeDescuento.toStringAsFixed(2)}");
  print("Importe a pagar: S/. ${importeAPagar.toStringAsFixed(2)}");
  print("Cantidad de caramelos de obsequio: $caramelosObsequio");
}
