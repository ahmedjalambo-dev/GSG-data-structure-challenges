bool isBalanced(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    if (input[i] == '(') {
      stack.add('(');
    } else if (input[i] == ')') {
      if (stack.isEmpty) return false;
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {
  print(isBalanced("(hello(world))")); // true
  print(isBalanced("((hello)")); // false
}
