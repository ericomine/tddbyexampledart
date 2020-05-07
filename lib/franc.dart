class Franc {
  final _amount;
  Franc(this._amount);
 
  Franc times(int multiplier) {
    return Franc(_amount * multiplier);
  }

  bool equals(Object obj) {
    var dollar = obj as Franc;
    return dollar._amount == _amount;
  }

}