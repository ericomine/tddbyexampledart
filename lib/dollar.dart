import 'money.dart';

class Dollar extends Money {
  Dollar(amount) : super(amount);  

  Dollar times(int multiplier) {
    return Dollar(amount * multiplier);
  }

  bool equals(Object obj) {
    var dollar = obj as Dollar;
    return dollar.amount == amount;
  }

}