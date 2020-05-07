abstract class Money {
  final amount;
  
  Money(this.amount);

  bool equals(Object obj) {
    var money = obj as Money;
    return money.amount == amount &&
      this.runtimeType == obj.runtimeType;

    // runtimeType replaces Java's getClass() method
  }

  Money times(int multiplier);
}