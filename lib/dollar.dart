import 'money.dart';

class Dollar extends Money {
  final _amount;
  Dollar(this._amount);
 
  Dollar times(int multiplier) {
    return Dollar(_amount * multiplier);
  }

  bool equals(Object obj) {
    var dollar = obj as Dollar;
    return dollar._amount == _amount;
  }

}