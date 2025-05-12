import 'linkedlist_node.dart';

Node? reverseList(Node? head) {
  Node? prev;
  Node? current = head;

  while (current != null) {
    Node? nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev;
}

void printList(Node? head) {
  while (head != null) {
    print(head.data);
    head = head.next;
  }
}

void main() {
  Node a = Node(1);
  Node b = Node(2);
  Node c = Node(3);
  a.next = b;
  b.next = c;

  Node? newHead = reverseList(a);
  printList(newHead); // 3, 2, 1
}
