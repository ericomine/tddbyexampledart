import 'package:tddbyexample_dart/dollar.dart';
import 'package:test/test.dart';

void main() {

  test('should multiply', () {
    Dollar five = Dollar(5);
    var product = five.times(2);
    expect(10, product.amount);
    product = five.times(3);
    expect(15, product.amount);
  });

}