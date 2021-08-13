import 'package:flutter/material.dart';
import 'package:m_home/models/mainDrawer.dart';
import 'package:m_home/widgets/bottom_devices.dart';

class DOne extends StatefulWidget {
  const DOne({Key? key}) : super(key: key);
  static const String routeName = '/DOne';

  @override
  _DOneState createState() => _DOneState();
}

class _DOneState extends State<DOne> {
  bool _currentStop = true;
  double _currentSliderValue = 0;
  double _currentSliderValue1 = 0;
  bool _autoManual = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text('D1')),
        drawer: MainDrawer(),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(children: [
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
                                      child: _currentSliderValue > 0 ? Text('  ${_currentSliderValue.round().toString()} % ',style: TextStyle(
                                        // shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                        //   //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                                        // ],
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w400),) : Text('  ВКЛ  ',style: TextStyle(
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
                          divisions: 20,
                          label: _currentSliderValue.round().toString() + ' %',
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),

                      ]
                      ),
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
