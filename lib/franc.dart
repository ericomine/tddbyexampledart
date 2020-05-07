import 'money.dart';

class Franc extends Money { 
  Franc(amount) : super(amount);
 
  Money times(int multiplier) {
    return Franc(amount * multiplier);
  }
}