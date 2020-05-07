import 'money.dart';

class Franc extends Money { 
  Franc(amount) : super(amount);
 
  @override
  String get currency => "CHF";

  Money times(int multiplier) {
    return Franc(amount * multiplier);
  }
}