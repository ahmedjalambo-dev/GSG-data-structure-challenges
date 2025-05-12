import 'linkedlist_node.dart';

Node? findMiddle(Node? head) {
  Node? slow = head;
  Node? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}

void main() {
  Node a = Node(1);
  Node b = Node(2);
  Node c = Node(3);
  Node d = Node(4);
  a.next = b;
  b.next = c;
  c.next = d;

  Node? middle = findMiddle(a);
  print(middle?.data); // 3
}
