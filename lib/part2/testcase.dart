import 'dart:mirrors';

class TestCase {
  String name;
  Object instance;
  TestCase(this.name, this.instance);

  void run() {
    var mirror = reflect(instance);
    mirror.invoke(Symbol(name), []);
  }
}