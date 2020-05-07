import 'package:tddbyexample_dart/expression.dart';
import 'package:tddbyexample_dart/money.dart';

class Sum implements Expression {
  final Money augend;
  final Money addend;

  Sum(
    this.augend,
    this.addend
  );

  Money reduce(bank, to) {
    return Money(
      augend.reduce(bank, to).amount +
      addend.reduce(bank, to).amount, to
    );
  }
}