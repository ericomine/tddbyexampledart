import 'package:tddbyexample_dart/part2/TestCaseTest.dart';
import 'package:test/test.dart';

void main() {
  test('Invoke test()', () {
    var myTest = TestCaseTest("testMethod");
    expect(true, myTest.run());
  });
  test('Invoke setUp() first', () {});
  test('Invoke tearDown() later', () {});
  test('Invoke tearDown() even if test fails', () {});
  test('Invoke multiple tests', () {});
  test('Report test results', () {});
}