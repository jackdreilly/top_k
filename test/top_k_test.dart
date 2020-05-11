import 'package:test/test.dart';
import 'package:top_k/top_k.dart';
import 'package:top_k/extensions.dart';

void main() {
  test('Top K test', () {
    expect(topK([4, 2, 6, 1], 2), equals([1, 2]));
    expect(topK([4, 2, 6, 1], 6), equals([1, 2, 4, 6]));
  });
  test('desc', () {
    expect(topK([4, 2, 6, 1, 6], 3, desc: true), equals([6, 6, 4]));
  });
  test('extensions', () {
    expect([4, 2, 6, 1].topK(2), [1, 2]);
    expect([4, 2, 6, 1].topK(2, desc: false), [1, 2]);
    expect([4, 2, 6, 1].topK(2, desc: true), [6, 4]);
    expect(['aaaa', 'bbb', 'cc', 'd'].topK(2), ['aaaa', 'bbb']);
    expect(
      <dynamic>['aaaa', 'bbb', 'cc', 'd'].topK(2, (a) => (a as String).length),
      ['d', 'cc'],
    );
    expect(['aaaa', 'bbb', 'cc', 'd'].topK(2, desc: true), ['d', 'cc']);
    expect(
      <dynamic>['aaaa', 'bbb', 'cc', 'd']
          .topK(2, (a) => (a as String).length, desc: true),
      ['aaaa', 'bbb'],
    );
  });
}
