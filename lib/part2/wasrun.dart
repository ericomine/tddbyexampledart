import 'testcase.dart';

class WasRun extends TestCase {
  bool _wasRun = false;
  bool get wasRun => _wasRun;

  WasRun(_name) : super(_name);

  void testMethod() {
    _wasRun = true;
  }
}