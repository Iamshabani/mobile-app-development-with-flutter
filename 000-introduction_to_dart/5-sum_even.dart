int sumOfEvenNumbers(List<int> numbers) {
  int sum = 0;

  for (int number in numbers) {
    if (number % 2 == 0) {
      // Add even numbers to the sum
      sum += number;
    }
  }

  return sum;
}

void main() {
  // Example usage: calculating the sum of even numbers in a list
  List<int> myNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int result = sumOfEvenNumbers(myNumbers);

  print('Sum of even numbers: $result');
}
