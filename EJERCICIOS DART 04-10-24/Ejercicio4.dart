import 'dart:io';

void main() {
  print("Ingrese un número para invertir sus dígitos:");
  int num = int.parse(stdin.readLineSync()!);
  
  int invertido = 0;
  while (num != 0) {
    int digito = num % 10;
    invertido = invertido * 10 + digito;
    num ~/= 10;
  }
  
  print("El número invertido es: $invertido");
}