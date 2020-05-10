import 'testcase.dart';

class WasRun extends TestCase {
  bool _wasRun = false;
  bool get wasRun => _wasRun;

  bool _wasSetup = false;
  bool get wasSetup => _wasSetup;

  WasRun(_name) : super(_name);

  void setup() {
    _wasSetup = true;
  }  

  void testMethod() {
    _wasRun = true;
  }
}