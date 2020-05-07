import 'package:tddbyexample_dart/expression.dart';

class Sum implements Expression {
  final augend;
  final addend;

  Sum(
    this.augend,
    this.addend
  );
}