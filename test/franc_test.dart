import 'package:tddbyexample_dart/money.dart';
import 'package:test/test.dart';

void main() {
  test('franc should multiply', () {
    Money five = Money.franc(5);
    var product = five.times(2);
    expect(true, Money.franc(10).equals(product));
    product = five.times(3);
    expect(true, Money.franc(15).equals(product));
  });
}