Map<String, int> characterFrequency(String inputString) {
  Map<String, int> frequencyMap = {};

  // Remove non-alphabetic characters and convert the string to lowercase
  String cleanedString =
      inputString.replaceAll(RegExp(r'[^a-zA-Z]'), '').toLowerCase();

  for (int i = 0; i < cleanedString.length; i++) {
    String currentChar = cleanedString[i];

    if (frequencyMap.containsKey(currentChar)) {
      // Increment the count if the character is already in the map
      frequencyMap[currentChar] = 1;
    } else {
      // Add the character to the map with a count of 1 if not present
      frequencyMap[currentChar] = 1;
    }
  }

  return frequencyMap;
}

void main() {
  // Example usage: calculating the character frequency in a string
  String myString = 'Hello, World!';
  Map<String, int> result = characterFrequency(myString);

  print('Character frequency: $result');
}
