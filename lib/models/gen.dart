

import 'dart:math';

import 'package:m_home/brains/slyder_brain.dart';

class Generator {
  var rng = new Random();
  late Stream<int> genValue;

  Generator._privateConstructor();
  static final Generator _instance = Generator._privateConstructor();
  static Generator get instance => _instance;

  start() {
     genValue = createAsyncGenerator();
  }
  Stream<int> createAsyncGenerator() async* {
    while (true) {
      var min = 180;
      var max = 290;
      yield  min + rng.nextInt(max - min);
      await Future.delayed(Duration(seconds: 5));
      // print('genValue == $genValue');
      // yield genValue;
    }
  }

  List stateDevices = [];

  void printReport() {
    print('stateDevices -> $stateDevices \r\n');
  }


}