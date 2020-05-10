import 'testcase.dart';

class WasRun extends TestCase {
  bool _wasRun = false;
  bool get wasRun => _wasRun;

  bool _wasSetup = false;
  bool get wasSetup => _wasSetup;

  String _log = "";
  bool get log => _log;

  WasRun(_name) : super(_name);

  void setup() {
    _wasSetup = true;
    _log = "setup";
  }  

  void testMethod() {
    _wasRun = true;
  }
}