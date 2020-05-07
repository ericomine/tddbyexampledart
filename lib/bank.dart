import 'package:tddbyexample_dart/expression.dart';
import 'package:tddbyexample_dart/money.dart';
import 'package:tddbyexample_dart/sum.dart';

class Bank {
  Money reduce(Expression source, String to) {
    Sum sum = source as Sum;
    int amount = sum.addend.amount + sum.augend.amount;
    return Money(amount, to);
  }
}