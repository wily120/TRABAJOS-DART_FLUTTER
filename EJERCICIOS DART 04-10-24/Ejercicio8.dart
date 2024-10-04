import 'dart:io';
import 'dart:math';

void main() {
  print("Ingrese un número para verificar si es Armstrong:");
  int num = int.parse(stdin.readLineSync()!);
  int originalNum = num, suma = 0, n = num.toString().length;

  while (num > 0) {
    int digito = num % 10;
    suma += pow(digito, n).toInt();
    num ~/= 10;
  }
  if (suma == originalNum) {
    print("$originalNum es un número Armstrong.");
  } else {
    print("$originalNum no es un número Armstrong.");
  }
}
