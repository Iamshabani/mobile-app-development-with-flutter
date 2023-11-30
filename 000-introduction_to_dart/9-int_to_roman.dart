String intToRoman(int number) {
  // Define the Roman numeral symbols and their corresponding values
  final List<String> symbols = ['M', 'D', 'C', 'L', 'X', 'V', 'I'];
  final List<int> values = [1000, 500, 100, 50, 10, 5, 1];

  StringBuffer result = StringBuffer();
  int num = number;

  for (int i = 0; i < symbols.length; i += 2) {
    int digit = num ~/ values[i];

    if (digit > 0) {
      if (digit == 9) {
        // Handle subtraction for 9 (IX, XC, CM)
        result.write('${symbols[i]}${symbols[i - 2]}');
        digit -= 9;
      } else if (digit >= 5) {
        // Handle 5, 6, 7, 8 (V, VI, VII, VIII)
        result.write(symbols[i - 1]);
        digit -= 5;
      } else if (digit == 4) {
        // Handle subtraction for 4 (IV, XL, CD)
        result.write('${symbols[i]}${symbols[i - 1]}');
        digit -= 4;
      }

      // Append remaining symbols
      result.write(symbols[i] * digit);
      num %= values[i];
    }
  }

  return result.toString();
}

void main() {
  // Example usage: converting an integer to a Roman numeral
  int myNumber = 1994;
  String result = intToRoman(myNumber);

  print('Roman numeral for $myNumber: $result');
}
