import 'package:collection/collection.dart';

/// Returns the smallest [k] elements from [inputs], sorted in increasing order.
List<T> topK<T extends Comparable>(Iterable<T> inputs, int k) {
  final q = HeapPriorityQueue<T>((T a, T b) => b.compareTo(a));
  for (T item in inputs) {
    q.add(item);
    if (q.length > k) {
      q.removeFirst();
    }
  }
  return q.toList()..sort((T a, T b) => a.compareTo(b));
}
