


import 'dart:math';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
//import 'package:udp/udp.dart'; --no-sound-null-safety
import 'dart:io';

import 'package:m_home/models/gen.dart';

class Data with ChangeNotifier {

  var genValue = 0;
  var timeValue = DateTime.now().second;
  Future<void> enableValues() async {
    Generator.instance.genValue.listen((event) {
      setGenValue(event);
      timeValue = DateTime.now().second;
      //print('$genValue - ${DateTime.now().second}');
    });
  }

  int getGenValue(){
    return genValue;
  }
  void setGenValue(val){
     genValue = val;
     notifyListeners();
  }

  var selectedPageIndex = 0;
  var counterCheckValue = 0;
  void toggleColor() {
    if(counterCheckValue == 0) {
      counterCheckValue = 1;
    } else {
      counterCheckValue = 0;
    }
    notifyListeners();
  }

  Future<void> enableFavs() async {

  }
  var enable = true;
  void verifyUser(String userName, String password) {
    if (userName == 'test') {
      if (password == 'test') {
        enable = true;
        print (enable);
      }
    }
  }
  void exit() {
     enable = false;
     print (enable);
     notifyListeners();
  }
  bool getEnable () {
    return enable;
  }
  }
