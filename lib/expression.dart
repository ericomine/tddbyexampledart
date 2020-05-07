import 'package:tddbyexample_dart/money.dart';

abstract class Expression {
  Money reduce(Bank bank, String to);
}