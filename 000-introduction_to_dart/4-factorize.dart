List<int> factorizeToPrimeNumbers(int number) {
  List<int> primeFactors = [];

  for (int i = 2; i <= number; i++) {
    while (number % i == 0) {
      // i is a prime factor
      primeFactors.add(i);
      // Divide the number by i
      number = number ~/ i;
    }
  }

  return primeFactors;
}

void main() {
  // Example usage: factorizing the number 60
  List<int> result = factorizeToPrimeNumbers(60);

  print('Prime factors of 60: $result');
}
