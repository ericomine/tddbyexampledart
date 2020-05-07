import 'dollar.dart';
import 'franc.dart';

class Money {
  final amount;
  final _currency;
  
  Money(this.amount, this._currency);

  String get currency => _currency;

  bool equals(Object obj) {
    var money = obj as Money;
    return money.amount == amount &&
      money.currency == currency;

    // runtimeType replaces Java's getClass() method
  }

  Money times(int multiplier) {
    return Money(amount * multiplier, currency);
  }

  static Money dollar(int amount) {
    return Dollar(amount, "USD");
  }

  static Money franc(int amount) {
    return Franc(amount, "CHF");
  } 
}