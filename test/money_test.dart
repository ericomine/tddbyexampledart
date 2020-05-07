import 'package:test/test.dart';

import '../lib/dollar.dart';
import '../lib/franc.dart';

void main() {
  test("franc != dollar", () {
    expect(false, Franc(10).equals(Dollar(10)));
  });

  test("currency", () {
    expect(Dollar(10).currency, equals("USD"));
    expect(Franc(10).currency, equals("CHF"));
  });
}