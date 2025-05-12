import 'linkedlist_node.dart';

Node? removeOccurrences(Node? head, int value) {
  while (head != null && head.data == value) {
    head = head.next;
  }

  Node? current = head;
  while (current?.next != null) {
    if (current!.next!.data == value) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
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
  Node c = Node(2);
  Node d = Node(3);
  a.next = b;
  b.next = c;
  c.next = d;

  Node? newHead = removeOccurrences(a, 2);
  printList(newHead); // 1, 3
}
