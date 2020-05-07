import 'dollar.dart';
import 'franc.dart';

abstract class Money {
  final amount;
  final _currency;
  
  Money(this.amount, this._currency);

  String get currency => _currency;

  bool equals(Object obj) {
    var money = obj as Money;
    return money.amount == amount &&
      this.runtimeType == obj.runtimeType;

    // runtimeType replaces Java's getClass() method
  }

  static Money dollar(int amount) {
    return Dollar(amount, "USD");
  }

  static Money franc(int amount) {
    return Franc(amount, "CHF");
  }

  Money times(int multiplier);
}