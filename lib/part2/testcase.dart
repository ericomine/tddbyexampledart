import 'dart:mirrors';

class TestCase {
  String name;
  TestCase(this.name);

  void run() {
    var mirror = reflect(this);
    mirror.invoke(Symbol(name), []);
  }
}