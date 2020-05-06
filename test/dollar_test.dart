import 'package:test/test.dart';

void main() {

  test('should multiply', () {
    Dollar five = Dollar(5);
    five.times(2);
    expect(10, five.ammount);
  });

}