import 'package:tddbyexample_dart/part2/wasrun.dart';
import 'package:test/test.dart';

void main() {
  test('Invoke test()', () {
    var myTest = WasRun("testMethod");
    print(myTest.wasRun);
    expect(false, myTest.wasRun);
    myTest.run();
    print(myTest.wasRun);
    expect(true, myTest.wasRun);
  });
  test('Invoke setUp() first', () {});
  test('Invoke tearDown() later', () {});
  test('Invoke tearDown() even if test fails', () {});
  test('Invoke multiple tests', () {});
  test('Report test results', () {});
}