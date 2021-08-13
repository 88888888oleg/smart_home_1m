
import 'package:flutter/material.dart';
import 'package:m_home/models/mainDrawer.dart';
import 'package:m_home/providers/data.dart';
import 'package:m_home/widgets/bottom_devices.dart';
import 'package:provider/provider.dart';

class RolletsScreen extends StatefulWidget {
  const RolletsScreen({Key? key}) : super(key: key);
  static const String routeName = '/RolletsScreen';

  @override
  _RolletsScreenState createState() => _RolletsScreenState();
}

class _RolletsScreenState extends State<RolletsScreen> {
  var _currentSliderValue = false;
  var _currentSliderValue1 = false;
  var _currentSliderValue2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('1M_ROLLER1101')),
        drawer: MainDrawer(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentSliderValue2 = false;

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
                              height: 150,
                              width: double.infinity,
                              child: Card(elevation: 20,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                color: _currentSliderValue ? Colors.red : null,
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: Center(
                                    child: _currentSliderValue ? Text('Открыть',style: TextStyle(
                                      //color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400),) : Text('Открыть',style: TextStyle(
                                      //color: Colors.black,
                                        fontSize: 30,
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
                              _currentSliderValue = false;
                              _currentSliderValue2 = false;
                              _currentSliderValue1 = false;

                              // if(_currentSliderValue1) {
                              //   _currentSliderValue = false;
                              //   _currentSliderValue2 = false;
                              //   _currentSliderValue1 = false;
                              // } else {
                              //   _currentSliderValue1 = true;
                              // }
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
                                    child: _currentSliderValue1 ? Text('Стоп',style: TextStyle(
                                      //color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400),) : Text('Стоп',style: TextStyle(
                                      //color: Colors.black,
                                        fontSize: 30,
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
                              _currentSliderValue = false;

                              if(_currentSliderValue2) {
                                _currentSliderValue = false;
                                _currentSliderValue2 = false;
                              } else {
                                _currentSliderValue2 = true;
                              }
                            });
                          },
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(vertical: 19),
                            child: Container(
                              height: 150,
                              width: double.infinity,
                              child: Card(elevation: 20,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                color: _currentSliderValue2 ? Colors.red : null,
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: Center(
                                    child: _currentSliderValue2 ? Text('Закрыть',style: TextStyle(
                                      //color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400),) : Text('Закрыть',style: TextStyle(
                                      //color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w400),),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1),
                              child: Container(
                                //width: 180,
                                height: 100,
                                child: Card(elevation: 20,
                                  //color:Colors.redAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Вход 1',style: TextStyle(
                                          //color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w400),),
                                        Card(elevation: 10,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('    -,--    ',style: TextStyle(
                                              //color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400),),
                                          ),)
                                      ]
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1),
                              child: Container(
                                //width: 180,
                                height: 100,
                                child: Card(elevation: 20,
                                  //color:Colors.redAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('Вход 2',style: TextStyle(
                                          //color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w400),),
                                        Card(elevation: 10,
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Text('    -,--    ',style: TextStyle(
                                              //color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400),),
                                          ),)
                                      ]
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],),
                      ],
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

