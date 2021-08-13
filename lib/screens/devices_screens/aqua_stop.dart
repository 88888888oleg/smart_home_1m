import 'package:flutter/material.dart';
import 'package:m_home/models/mainDrawer.dart';
import 'package:m_home/widgets/bottom_devices.dart';

class AquaStop extends StatefulWidget {
  const AquaStop({Key? key}) : super(key: key);
  static const String routeName = '/AquaStop';

  @override
  _AquaStopState createState() => _AquaStopState();
}

class _AquaStopState extends State<AquaStop> {
  bool _currentStop = true;
  double _currentSliderValue = 0;
  double _currentSliderValue1 = 0;
  bool _autoManual = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text('Аквастоп')),
    drawer: MainDrawer(),
    body: SafeArea(
    child: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding( 
              padding: const EdgeInsets.all(12.0),
              child: Column(children: [
                 InkWell(
                  onTap: (){
                    setState(() {
                      if(_currentSliderValue <= 0) {
                        _currentSliderValue = 100;
                      } else {
                        _currentSliderValue = 0;
                      }
                    });
                  },
                   child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  child: Container(
                    width: 180,
                    child: Card(elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1),
                        child: Center(
                          child: Text('Кран 1',style: TextStyle(
                            //color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                      ),
                    ),
                  ),
                ),
            ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Container(
                         width: 130,
                         height: 80,
                         child: TextButton(onPressed: () {
                           setState(() {
                             _currentSliderValue = 0;
                           });
                         },
                         child:
                         Padding(
                           padding: const EdgeInsets.all(18.0),
                           child: Text('Выкл',style: TextStyle(
                               // shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                               //   //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                               // ],
                               color: Colors.black,
                               fontSize: 22,
                               fontWeight: FontWeight.w400),),
                         ),
                             style: ButtonStyle(
                                 backgroundColor: _currentSliderValue <= 0 ? MaterialStateProperty.all(Colors.lightBlue): MaterialStateProperty.all(Colors.white),
                                 elevation: MaterialStateProperty.all(20.0),
                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                     RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(50.0),
                                         side: BorderSide(color: Colors.red)
                                     )
                                 )
                             )),
                       ),
                     ),


                     Padding(
                       padding: const EdgeInsets.all(15),
                       child: Container(
                         width: 130,
                         height: 80,
                         child: TextButton(onPressed: () {
                           setState(() {
                             _currentSliderValue = 100;

                           });
                         },
                             child: Padding(
                               padding: const EdgeInsets.all(18.0),
                               child: Text('  Вкл  ',style: TextStyle(
                                 // shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                 //   //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                                 // ],
                                   color: Colors.black,
                                   fontSize: 22,
                                   fontWeight: FontWeight.w400),),
                             ), style: ButtonStyle(
                                 backgroundColor: _currentSliderValue > 0 ? MaterialStateProperty.all(Colors.lightBlue): MaterialStateProperty.all(Colors.white),
                                 elevation: MaterialStateProperty.all(20.0),
                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                     RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(50.0),
                                         side: BorderSide(color: Colors.red)
                                     )
                                 )
                             )),
                       ),
                     ),

                   ],
                 ),
                Slider(
                  value: _currentSliderValue,
                  min: 0,
                  max: 100,
                  divisions: 5,
                  label: _currentSliderValue.round().toString() + ' %',
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
///////////////////
                InkWell(
                  onTap: (){
                    setState(() {
                      if(_currentSliderValue1 <= 0) {
                        _currentSliderValue1 = 100;
                      } else {
                        _currentSliderValue1 = 0;
                      }
                    });
                  },
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Container(
                      width: 180,
                      child: Card(elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Center(
                            child: Text('Кран 2',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 130,
                        height: 80,
                        child: TextButton(onPressed: () {
                          setState(() {
                            _currentSliderValue1 = 0;
                          });
                        },
                            child:
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text('Выкл',style: TextStyle(
                                // shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //   //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                                // ],
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),),
                            ),
                            style: ButtonStyle(
                                backgroundColor: _currentSliderValue1 <= 0 ? MaterialStateProperty.all(Colors.lightBlue): MaterialStateProperty.all(Colors.white),
                                elevation: MaterialStateProperty.all(20.0),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50.0),
                                        side: BorderSide(color: Colors.red)
                                    )
                                )
                            )),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: 130,
                        height: 80,
                        child: TextButton(onPressed: () {
                          setState(() {
                            _currentSliderValue1 = 100;

                          });
                        },
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text('  Вкл  ',style: TextStyle(
                                // shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //   //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                                // ],
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),),
                            ), style: ButtonStyle(
                                backgroundColor: _currentSliderValue1 > 0 ? MaterialStateProperty.all(Colors.lightBlue): MaterialStateProperty.all(Colors.white),
                                elevation: MaterialStateProperty.all(20.0),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50.0),
                                        side: BorderSide(color: Colors.red)
                                    )
                                )
                            )),
                      ),
                    ),

                  ],
                ),
                Slider(
                  value: _currentSliderValue1,
                  min: 0,
                  max: 100,
                  divisions: 5,
                  label: _currentSliderValue1.round().toString() + ' %',
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue1 = value;
                    });
                  },
                ),
///////////////////////////
              Row(children: [
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        _currentStop = false;
                        if(_currentSliderValue > 0) {
                          _currentSliderValue = 0;
                        }
                        if(_currentSliderValue1 > 0) {
                          _currentSliderValue1 = 0;
                        }
                      });
                    },
                    child:  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Container(
                        //width: 180,
                        height: 100,
                        child: Card(elevation: 20,
                            color: _currentStop ? Colors.redAccent : null,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: Center(
                              child: _currentStop ? Text('ПРОТЕЧКА',style: TextStyle(
                                //color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),) : Text('УСТРАНЕНО',style: TextStyle(
                                //color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),),
                            ),
                          ),
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
                            Text('Счетчик',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),),
                          Card(elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('    0.700    ',style: TextStyle(
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
                InkWell(
                  onTap: (){
                    setState(() {
                      if(_autoManual) {
                        _autoManual = false;
                      } else {
                        _autoManual = true;
                      }
                    });
                  },
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Card(color:_autoManual ? Theme.of(context).primaryColor: null,
                      elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: Center(
                            child: _autoManual ? Text('Авто',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),) : Text('Ручное',style: TextStyle(
                              //color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),)
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ]
              ),
            ),
          ),
        ),

        BottomDevices(),

      ],
    ),

    ));
  }
}
