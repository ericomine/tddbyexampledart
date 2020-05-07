import 'package:tddbyexample_dart/bank.dart';
import 'package:tddbyexample_dart/expression.dart';
import 'package:tddbyexample_dart/sum.dart';

class Money extends Expression {
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

  Money reduce(Bank bank, String to) {
    num rate = currency == "CHF" && to == "USD" ? 2 : 1;    
    return Money(amount / rate, to);
  }  

  Money times(int multiplier) {
    return Money(amount * multiplier, currency);
  }

  Expression plus(Money addend) {
    return Sum(this, addend);
  }

  static Money dollar(int amount) {
    return Money(amount, "USD");
  }

  static Money franc(int amount) {
    return Money(amount, "CHF");
  } 
}