import 'money.dart';

class Franc extends Money { 
  Franc(amount) : super(amount);
 
  final _currency = "CHF";
  @override
  String get currency => _currency;

  Money times(int multiplier) {
    return Franc(amount * multiplier);
  }
}