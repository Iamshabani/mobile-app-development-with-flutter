int getSmallestInteger(List<int> myList) {
  if (myList.isEmpty) {
    throw ArgumentError("The list cannot be empty");
  }

  int smallest = myList[0];

  for (int number in myList) {
    if (number < smallest) {
      smallest = number;
    }
  }

  return smallest;
}
