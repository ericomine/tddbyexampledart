import 'money.dart';

class Dollar extends Money {
  Dollar(amount) : super(amount);  

  final _currency = "USD";
  @override
  String get currency => _currency;

  Money times(int multiplier) {
    return Dollar(amount * multiplier);
  }
}