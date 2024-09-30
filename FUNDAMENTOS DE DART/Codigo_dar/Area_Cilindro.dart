import 'dart:io';
import 'dart:math';

void main() {
  print("Ingrese el radio del cilindro:");
  double radio = double.parse(stdin.readLineSync()!);

  print("Ingrese la altura del cilindro:");
  double altura = double.parse(stdin.readLineSync()!);

  double area = 2 * pi * radio * (radio + altura);
  double volumen = pi * pow(radio, 2) * altura;

  print("El área total del cilindro es: $area");
  print("El volumen del cilindro es: $volumen");
}
