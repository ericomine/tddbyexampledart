import 'package:tddbyexample_dart/money.dart';
import 'package:test/test.dart';

void main() {

  test('should multiply', () {
    Money five = Money.dollar(5);
    var product = five.times(2);
    expect(true, Money.dollar(10).equals(product));
    product = five.times(3);
    expect(true, Money.dollar(15).equals(product));
  });

  test('equality', () {
    expect(true, Money.dollar(5).equals(Money.dollar(5)));
    expect(false, Money.dollar(6).equals(Money.dollar(5)));
  });

}