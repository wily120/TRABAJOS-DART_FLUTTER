import 'dart:io';

void main() {
  stdout.write("Introducir un valor del lado de un cuadrado: ");
  double lado = double.parse(stdin.readLineSync()!);

  double area = lado * lado;
  double perimetro = 4 * lado;

  print("El área del cuadrado es: $area");
  print("El perímetro del cuadrado es: $perimetro");
}
