import 'package:test/test.dart';
import 'package:top_k/top_k.dart';

void main() {
  test('Top K test', () {
    expect(topK([4, 2, 6, 1], 2), equals([1, 2]));
    expect(topK([4, 2, 6, 1], 6), equals([1, 2, 4, 6]));
  });
}
