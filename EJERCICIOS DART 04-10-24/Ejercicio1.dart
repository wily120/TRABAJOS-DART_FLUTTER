
import 'dart:io';


void main() {
  print("Ingrese el primer número:");
  int num1 = int.parse(stdin.readLineSync()!);

  print("Ingrese el segundo número:");
  int num2 = int.parse(stdin.readLineSync()!);

  int sumaPrimos = 0;

  for (int i = num1; i <= num2; i++) {
    if (esPrimo(i)) {
      sumaPrimos += i;
    }
  }

  print("La suma de los números primos entre $num1 y $num2 es: $sumaPrimos");
}

bool esPrimo(int num) {
  if (num <= 1) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) return false;
  }
  return true;
}


