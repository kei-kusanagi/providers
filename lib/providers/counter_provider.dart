import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter_provider => _counter;

  void increment() {
    _counter++;
    notifyListeners();
    //con esto le sumamos uno mas a counter cada que ejecutemos increment(),
    //el que vamos a usar para afuera sera en este caso counter_provder
  }
}

class SumaMaster with ChangeNotifier {
  String _resultado = '';

  String get resultado => _resultado;

  void Sumar(numero1, numero2) {
    _resultado = numero1 + numero2;
    notifyListeners();
  }
}
