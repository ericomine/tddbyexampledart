import 'wasrun.dart';
import 'testcase.dart';

class TestCaseTest extends TestCase {
  TestCaseTest(name) : super(name);

  WasRun myTest;

  void setup() {
    myTest = WasRun(name);
  }

  void testRunning() {
    myTest.run();
    assert(myTest.wasRun);
  }
  
  void testSetup() {
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