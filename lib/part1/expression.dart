import './bank.dart';
import './money.dart';

abstract class Expression {
  Money reduce(Bank bank, String to);
}