import 'package:tddbyexample_dart/expression.dart';
import 'package:tddbyexample_dart/money.dart';

class Bank {
  Money reduce(Expression source, String to) {
    return source.reduce(this, to);
  }

  void addRate(String fromCurrency, String toCurrency, num rate) {
    return null;
  }
}