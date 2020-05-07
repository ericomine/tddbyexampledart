import 'package:test/test.dart';

import '../lib/dollar.dart';
import '../lib/franc.dart';

void main() {
  test("franc != dollar", () {
    expect(false, Franc(10).equals(Dollar(10)));
  });
}