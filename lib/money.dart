import 'dollar.dart';
import 'franc.dart';

abstract class Money {
  final amount;
  
  Money(this.amount);

  String get currency;

  bool equals(Object obj) {
    var money = obj as Money;
    return money.amount == amount &&
      this.runtimeType == obj.runtimeType;

    // runtimeType replaces Java's getClass() method
  }

  static Money dollar(int amount) {
    return Dollar(amount);
  }

  static Money franc(int amount) {
    return Franc(amount);
  }

  Money times(int multiplier);
}