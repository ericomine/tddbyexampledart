import 'wasrun.dart';
import 'testcase.dart';

class TestCaseTest extends TestCase {
  TestCaseTest(name) : super(name);

  void testRunning() {
    var myTest = WasRun(name);
    myTest.run();
    assert(myTest.wasRun);
  }
  
  void testSetup() {
    var myTest = WasRun(name);
    myTest.run();
    assert(myTest.wasSetup);
  }

  bool run() {
    try {
      testRunning();
    } catch (ex) {
      return false;
    } finally {
      return true;
    }
  }
}