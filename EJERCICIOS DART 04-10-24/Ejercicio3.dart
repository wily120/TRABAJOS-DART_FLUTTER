import 'dart:io';

void main() {
  print("Ingrese un número para calcular su factorial:");
  int num = int.parse(stdin.readLineSync()!);
  
  BigInt factorial = BigInt.from(1);
  for (int i = 1; i <= num; i++) {
    factorial *= BigInt.from(i);
  }
  
  print("El factorial de $num es: $factorial");
}
