bool isPrime(int number) {
  if (number < 2) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  // If no divisors were found, the number is prime
  return true;
}

void main() {
  // Example usage: checking if a number is prime
  int myNumber = 17;
  bool result = isPrime(myNumber);

  if (result) {
    print('$myNumber is a prime number.');
  } else {
    print('$myNumber is not a prime number.');
  }
}
