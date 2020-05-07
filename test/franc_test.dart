import 'package:test/test.dart';

import '../lib/franc.dart';

void main() {
  test('franc should multiply', () {
    Franc five = Franc(5);
    var product = five.times(2);
    expect(true, Franc(10).equals(product));
    product = five.times(3);
    expect(true, Franc(15).equals(product));
  });
}