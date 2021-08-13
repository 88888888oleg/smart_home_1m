
import 'package:flutter/material.dart';
import 'package:m_home/models/mainDrawer.dart';
import 'package:m_home/providers/data.dart';
import 'package:m_home/widgets/bottom_devices.dart';
import 'package:provider/provider.dart';

class FourChannels extends StatefulWidget {
  const FourChannels({Key? key}) : super(key: key);
  static const String routeName = '/FourChannels';

  @override
  _FourChannelsState createState() => _FourChannelsState();
}

class _FourChannelsState extends State<FourChannels> {
  var _currentSliderValue = false;

  var _currentSliderValue1 = false;

  var _currentSliderValue2 = false;

  var _currentSliderValue3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('4CH')),
        drawer: MainDrawer(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      if(_currentSliderValue) {
                        _currentSliderValue = false;
                      } else {
                        _currentSliderValue = true;
                      }
                    });
                  },
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 19),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Card(elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: _currentSliderValue ? Colors.red : null,
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Center(
                            child: _currentSliderValue ? Text('Выход 1      ВКЛ',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),) : Text('Выход 1      ВЫКЛ',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      if(_currentSliderValue1) {
                        _currentSliderValue1 = false;
                      } else {
                        _currentSliderValue1 = true;
                      }
                    });
                  },
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 19),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Card(elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: _currentSliderValue1 ? Colors.red : null,
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Center(
                            child: _currentSliderValue1 ? Text('Выход 2      ВКЛ',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),) : Text('Выход 2      ВЫКЛ',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      if(_currentSliderValue2) {
                        _currentSliderValue2 = false;
                      } else {
                        _currentSliderValue2 = true;
                      }
                    });
                  },
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 19),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Card(elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: _currentSliderValue2 ? Colors.red : null,
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Center(
                            child: _currentSliderValue2 ? Text('Выход 3      ВКЛ',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),) : Text('Выход 3      ВЫКЛ',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      if(_currentSliderValue3) {
                        _currentSliderValue3 = false;
                      } else {
                        _currentSliderValue3 = true;
                      }
                    });
                  },
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 19),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Card(elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: _currentSliderValue3 ? Colors.red : null,
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Center(
                            child: _currentSliderValue3 ? Text('Выход 4      ВКЛ',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),) : Text('Выход 4      ВЫКЛ',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                BottomDevices(),

              ],
            ),
          ),
        ));
  }
}

