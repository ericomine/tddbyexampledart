import 'money.dart';

class Dollar extends Money {
  final _currency;
  Dollar(
    amount,
    this._currency
  ) : super(amount);  
  
  @override
  String get currency => _currency;

  Money times(int multiplier) {
    return Money.dollar(amount * multiplier);
  }
}