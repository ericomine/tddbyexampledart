import 'money.dart';

class Dollar extends Money {
  Dollar(amount) : super(amount);  

  @override
  String get currency => "USD";

  Money times(int multiplier) {
    return Dollar(amount * multiplier);
  }
}