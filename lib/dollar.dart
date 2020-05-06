class Dollar {
  int amount = 0;
  Dollar(this.amount);
  Dollar times(int multiplier) {
    return Dollar(amount * multiplier);
  }
}