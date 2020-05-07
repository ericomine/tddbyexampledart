import 'money.dart';

class Dollar extends Money {
  Dollar(amount) : super(amount);  

  Money times(int multiplier) {
    return Dollar(amount * multiplier);
  }
}