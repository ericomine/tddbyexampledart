import 'dart:mirrors';

class TestCase {
  String name;
  TestCase(this.name);

  void setup() {}

  void run() {
    setup();
    var mirror = reflect(this);
    mirror.invoke(Symbol(name), []);
  }
}