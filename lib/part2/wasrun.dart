import 'testcase.dart';

class WasRun {
  bool _wasRun = false;
  bool get wasRun => _wasRun;

  String _name;
  WasRun(this._name);

  void run() {
    TestCase(_name, this).run();
  }

  void testMethod() {
    _wasRun = true;
  }
}