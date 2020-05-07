import 'money.dart';

class Franc extends Money { 
  final _currency;
  Franc(
    amount,
    this._currency
  ) : super(amount);
  
  @override
  String get currency => _currency;

  Money times(int multiplier) {
    return Franc(amount * multiplier, _currency);
  }
}