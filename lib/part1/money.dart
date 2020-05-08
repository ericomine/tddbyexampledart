import './bank.dart';
import './expression.dart';
import './sum.dart';

class Money extends Expression {
  final num amount;
  final String _currency;
  
  Money(this.amount, this._currency);

  String get currency => _currency;

  bool equals(Object obj) {
    var money = obj as Money;
    return money.amount == amount &&
      money.currency == currency;

    // runtimeType replaces Java's getClass() method
  }

  Money reduce(Bank bank, String to) {
    num rate = bank.rate(currency, to);
    return Money(amount / rate, to);
  }  

  Money times(int multiplier) {
    return Money(amount * multiplier, currency);
  }

  Expression plus(Money addend) {
    return Sum(this, addend);
  }

  static Money dollar(num amount) {
    return Money(amount, "USD");
  }

  static Money franc(num amount) {
    return Money(amount, "CHF");
  } 
}