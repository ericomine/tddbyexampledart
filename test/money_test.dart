import 'package:tddbyexample_dart/money.dart';
import 'package:test/test.dart';

void main() {
  test("franc != dollar", () {
    expect(false, Money.franc(10).equals(Money.dollar(10)));
    expect(true, Money(10, "CHF").equals(Money.franc(10)));
  });

  test("currency", () {
    expect(Money.dollar(10).currency, equals("USD"));
    expect(Money.franc(10).currency, equals("CHF"));
  });

  test('dollar should multiply', () {
    Money five = Money.dollar(5);
    var product = five.times(2);
    expect(true, Money.dollar(10).equals(product));
    product = five.times(3);
    expect(true, Money.dollar(15).equals(product));
  });

  test('dollar equality', () {
    expect(true, Money.dollar(5).equals(Money.dollar(5)));
    expect(false, Money.dollar(6).equals(Money.dollar(5)));
  });

  test('franc should multiply', () {
    Money five = Money.franc(5);
    var product = five.times(2);
    expect(true, Money.franc(10).equals(product));
    product = five.times(3);
    expect(true, Money.franc(15).equals(product));
  });
}