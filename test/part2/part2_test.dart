import 'package:tddbyexample_dart/part2/TestCaseTest.dart';
import 'package:test/test.dart';

void main() {
  test('Invoke test()', () {
    expect(true, TestCaseTest().run());
  });
  test('Invoke setUp() first', () {});
  test('Invoke tearDown() later', () {});
  test('Invoke tearDown() even if test fails', () {});
  test('Invoke multiple tests', () {});
  test('Report test results', () {});
}