import 'dart:mirrors';

class WasRun {
  String methodToTest;
  WasRun(this.methodToTest);

  bool _wasRun = false;
  bool get wasRun => _wasRun;

  void testMethod() {
    _wasRun = true;
  }

  void run() {
    var mirror = reflect(this);
    mirror.invoke(Symbol(methodToTest), []);
  }

}