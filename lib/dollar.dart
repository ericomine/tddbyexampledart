import 'money.dart';

class Dollar extends Money {
  Dollar(
    amount,
    currency
  ) : super(amount, currency);  

  Money times(int multiplier) {
    return Money.dollar(amount * multiplier);
  }
}