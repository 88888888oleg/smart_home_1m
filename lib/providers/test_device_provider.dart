import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:m_home/brains/impuse_button_brain.dart';
import 'package:m_home/brains/models/device_model.dart';
import 'package:m_home/brains/of_button_brain.dart';
import 'package:m_home/brains/on_button_brain.dart';
import 'package:m_home/brains/slyder_brain.dart';
import 'package:m_home/brains/state_brain.dart';
import 'package:m_home/brains/stop_button_brain.dart';
import 'package:m_home/models/gen.dart';

class TestDeviceProvider with ChangeNotifier implements Device  {
  // unique id for device from storage
  var uId  = 'test_id';
  // unique system id
  var systemId = 'system_1';
  TestDeviceProvider() :
        instance = Slyder(idOwn:'0',idDevice: 'test_id',idUi: 0),
        instance1 = Slyder(idOwn:'1',idDevice: 'test_id',idUi: 0),
        //instance2 = Slyder(idOwn:'2',idDevice: 'test_id',idUi: 0),
        instanceOnButton = OnButton(idOwn:'3',idDevice: 'test_id',idUi: 0),
        instanceOnButton1 = OnButton(idOwn:'4',idDevice: 'test_id',idUi: 0),
        instanceOffButton = OffButton(idOwn:'5',idDevice: 'test_id',idUi: 0),
        instanceOffButton1 = OffButton(idOwn:'6',idDevice: 'test_id',idUi: 0),
        instanceStopButton = StopButton(idOwn:'7',idDevice: 'test_id',idUi: 0),
        instanceState = StateUi(idOwn:'8',idDevice: 'test_id',idUi: 0),
        instanceImpulseButton = ImpulseButton(idOwn:'9',idDevice: 'test_id',idUi: 0)


  {
    Generator.instance.stateDevices.add(instance);
    Generator.instance.stateDevices.add(instance1);
    //Generator.instance.stateDevices.add(instance2);
    Generator.instance.stateDevices.add(instanceOnButton);
    Generator.instance.stateDevices.add(instanceOnButton1);
    Generator.instance.stateDevices.add(instanceOffButton);
    Generator.instance.stateDevices.add(instanceOffButton1);
    Generator.instance.stateDevices.add(instanceStopButton);
    Generator.instance.stateDevices.add(instanceImpulseButton);

    Generator.instance.printReport();
  }
////////////////////////////////////////////////
  ImpulseButton instanceImpulseButton;
  double simpleTime = 25;
  void sendImpulseButton() {
    instanceImpulseButton.sendInableImpulse(simpleTime);
  }
  /////////////////////////////////////////
  StateUi instanceState;
  double thermometrValue = 20.0;
  double getThermometrValue(){
    return instanceState.toUiState;
  }
  void disableEntity(){
    instanceState.isActive = 0;
    notifyListeners();
  }
/////////////////////////////////////////
  StopButton instanceStopButton;
  void stopFunctionInstanceStopButton (){
    instanceStopButton.stopDevice();
    if(timerOn != null || timerOff != null) {
      timerOn ?? timerOff!.cancel();
      timerOff ?? timerOn!.cancel();
    }
    if(timerOn != null && timerOff != null) {
      timerOff!.cancel();
      timerOn!.cancel();
    }
    stateValueOffButton = 0;
    stateValueOnButton = 0;
    notifyListeners();
  }
  /////////////////////////////////////////////////
  OffButton instanceOffButton1;
  int stateValueOffButton1 = 0;
  void getOffButtonValue1(){
    stateValueOffButton1=instanceOffButton1.getLigicStateDevice();
    notifyListeners();
  }
  void offFunctionInstanceOffButton1() {
    stateValueOffButton1 = 2;
    notifyListeners();
    instanceOffButton1.putOffDevice();
    tm(getOffButtonValue1);
  }
////////////////////////////////////////////////////

  /////////////////////////////////////////////////
  OffButton instanceOffButton;
  Timer? timerOff;

  int stateValueOffButton = 0;
  void getOffButtonValue(){
    stateValueOffButton=instanceOffButton.getLigicStateDevice();
    notifyListeners();
  }
  void offFunctionInstanceOffButton() {
    stateValueOffButton = 2;
    notifyListeners();
    instanceOffButton.putOffDevice();
    timerOff = Timer(tenSeconds, () => getOffButtonValue());

    //tm(getOffButtonValue);
  }
////////////////////////////////////////////////////

/////////////////////////////////////////////////
OnButton instanceOnButton1;
int stateValueOnButton4 = 0;
void getOnButtonValue4(){
  stateValueOnButton4=instanceOnButton1.getLigicStateDevice();
  notifyListeners();
}
void onFunction4() {
  stateValueOnButton4 = 2;
  notifyListeners();
  instanceOnButton1.putOnDevice();
  tm(getOnButtonValue4);
}
////////////////////////////////////////////////////

/////////////////////////////////////////////////
  Timer? timerOn;
  OnButton instanceOnButton;
  int stateValueOnButton = 0;
  void getOnButtonValue(){
    stateValueOnButton=instanceOnButton.getLigicStateDevice();
    notifyListeners();
  }
  void onFunction() {
    stateValueOnButton = 2;
    notifyListeners();
    instanceOnButton.putOnDevice();
    timerOn = Timer(tenSeconds, () => getOnButtonValue());
  }

////////////////////////////////////////////////////
  Slyder instance;
  var slyderValue = 0.0;
  var toUiSlyderValue = 0.0;

  void getSlyderValue() {
     toUiSlyderValue =  instance.toUiState;
     slyderValue = toUiSlyderValue;
     notifyListeners();
     print(toUiSlyderValue);
  }
  void changeSliderValue (double value) {
    tm(getSlyderValue);
    slyderValue = value;
    instance.fromUiState = value;
    instance.printReport();
    notifyListeners();
  }

//////////////////////////////////////////////
  Slyder instance1;
  var slyderValue1 = 0.0;
  var toUiSlyderValue1 = 0.0;

  void getSlyderValue1() {
    toUiSlyderValue1 =  instance1.toUiState;
    notifyListeners();
    print(toUiSlyderValue1);
  }
  void changeSliderValue1 (double value) {
    slyderValue1 = value;
    instance1.fromUiState = value;
    instance1.printReport();
    notifyListeners();
  }
// ///////////////////////////////////// temp functions
void setInputState(){
    if(instance1.idUi == 1) {
      instance1.idUi = 0;
    } else {
      instance1.idUi = 1;
    }
  notifyListeners();

}
  Timer? timer;
  var tenSeconds =  Duration(seconds: 10);
  void tm(Function callback){
    print('start timer');
     timer = Timer(tenSeconds, () => callback());
  }

}
