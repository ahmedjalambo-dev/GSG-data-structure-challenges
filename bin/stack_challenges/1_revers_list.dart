void reverseList(List<int> items) {
  // Using a simple for loop to print in reverse
  for (int i = items.length - 1; i >= 0; i--) {
    print(items[i]);
  }
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5];
  reverseList(myList);
}
