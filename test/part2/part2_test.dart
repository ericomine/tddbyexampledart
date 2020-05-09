import 'package:tddbyexample_dart/part2/wasrun.dart';
import 'package:test/test.dart';

void main() {
  test('Invoke test()', () {
    var myTest = WasRun("testMethod");
    print(myTest.wasrun);
    myTest.testMethod();
    print(myTest.wasrun);

  });
  test('Invoke setUp() first', () {});
  test('Invoke tearDown() later', () {});
  test('Invoke tearDown() even if test fails', () {});
  test('Invoke multiple tests', () {});
  test('Report test results', () {});
}