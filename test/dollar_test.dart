import 'package:tddbyexample_dart/dollar.dart';
import 'package:test/test.dart';

void main() {

  test('should multiply', () {
    Dollar five = Dollar(5);
    var product = five.times(2);
    expect(true, Dollar(10).equals(product));
    product = five.times(3);
    expect(true, Dollar(15).equals(product));
  });

  test('equality', () {
    expect(true, Dollar(5).equals(Dollar(5)));
    expect(false, Dollar(6).equals(Dollar(5)));
  });

}