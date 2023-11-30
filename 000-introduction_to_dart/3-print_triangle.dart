void printRightAngleTriangle(int height) {
  for (int i = 1; i <= height; i++) {
    for (int j = 1; j <= i; j++) {
      // Print '*' for each row
      print('*');
    }
    // Move to the next line after completing each row
    print('');
  }
}

void main() {
  // Example usage: printing a right-angled triangle with height 5
  printRightAngleTriangle(5);
}
