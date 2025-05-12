import 'linkedlist_node.dart';

void printReverse(Node? head) {
  if (head == null) return;
  printReverse(head.next);
  print(head.data);
}

void main() {
  Node n1 = Node(1);
  Node n2 = Node(2);
  Node n3 = Node(3);
  n1.next = n2;
  n2.next = n3;

  printReverse(n1); // prints 3, 2, 1
}
