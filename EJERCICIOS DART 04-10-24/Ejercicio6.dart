void main() {
  print("Números perfectos entre 1 y 10,000:");
  for (int num = 1; num <= 10000; num++) {
    int sumaDivisores = 0;
    for (int i = 1; i <= num ~/ 2; i++) {
      if (num % i == 0) {
        sumaDivisores += i;
      }
    }

    if (sumaDivisores == num) {
      print(num);
    }
  }
}
