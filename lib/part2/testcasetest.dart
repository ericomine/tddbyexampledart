import 'wasrun.dart';

class TestCaseTest {
  TestCaseTest() {
    var myTest = WasRun("testMethod");
    assert(!myTest.wasRun);
    myTest.run();
    assert(true, myTest.wasRun);
  }

  bool run() {
    try {
      TestCaseTest();
    } catch (ex) {
      return false;
    } finally {
      return true;
    }
  }
}