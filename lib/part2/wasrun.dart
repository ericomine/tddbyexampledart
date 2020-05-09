class WasRun {
  WasRun(String s);

  bool _wasRun = false;
  bool get wasRun => _wasRun;

  void testMethod() {
    _wasRun = true;
  }
  
}