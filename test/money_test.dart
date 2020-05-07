import 'package:tddbyexample_dart/money.dart';
import 'package:test/test.dart';

void main() {
  test("franc != dollar", () {
    expect(false, Money.franc(10).equals(Money.dollar(10)));
  });

  test("currency", () {
    expect(Money.dollar(10).currency, equals("USD"));
    expect(Money.franc(10).currency, equals("CHF"));
  });
}