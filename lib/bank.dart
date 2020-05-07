import 'dart:collection';

import 'package:tddbyexample_dart/expression.dart';
import 'package:tddbyexample_dart/money.dart';
import 'package:tuple/tuple.dart';

class Bank {
  var rates = HashMap<Tuple2<String, String>, num>();

  Money reduce(Expression source, String to) {
    return source.reduce(this, to);
  }

  void addRate(String fromCurrency, String toCurrency, num rate) {
    var key = Tuple2<String, String>(fromCurrency, toCurrency);
    rates[key] = rate;
  }
}