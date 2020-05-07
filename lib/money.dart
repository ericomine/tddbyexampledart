import 'package:tddbyexample_dart/expression.dart';

class Money implements Expression {
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

  Expression plus(Money addend) {
    return Money(amount + addend.amount, currency);
  }

  static Money dollar(int amount) {
    return Money(amount, "USD");
  }

  static Money franc(int amount) {
    return Money(amount, "CHF");
  } 
}