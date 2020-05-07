import 'dollar.dart';

class Money {
  final amount;
  
  Money(this.amount);

  bool equals(Object obj) {
    var money = obj as Money;
    return money.amount == amount;
  }
}