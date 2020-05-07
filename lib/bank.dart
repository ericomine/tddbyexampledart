import 'dart:collection';

import 'package:tddbyexample_dart/expression.dart';
import 'package:tddbyexample_dart/money.dart';
import 'package:tuple/tuple.dart';

class Bank {
  var rates = HashMap<Tuple2<String, String>, num>();

  Money reduce(Expression source, String to) {
    return source.reduce(this, to);
  }

  num rate(String fromCurrency, String toCurrency) {
    var key = Tuple2<String, String>(fromCurrency, toCurrency);
    num result;
    try {
      result = rates[key];
    } catch (exception) {
      throw exception;
    }
    
    if (result != null) {
      return result;
    } else { 
      return null;
    }
  }

  void addRate(String fromCurrency, String toCurrency, num rate) {
    var key = Tuple2<String, String>(fromCurrency, toCurrency);
    rates[key] = rate;
  }
}