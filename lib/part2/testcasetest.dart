import 'wasrun.dart';
import 'testcase.dart';

class TestCaseTest extends TestCase {
  TestCaseTest(name) : super(name);

  void testRunning() {
    var myTest = WasRun(name);
    assert(!myTest.wasRun);
    myTest.run();
    assert(myTest.wasRun);
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