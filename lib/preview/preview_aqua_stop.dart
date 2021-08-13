import 'package:flutter/material.dart';
import 'package:m_home/providers/data.dart';
import 'package:provider/provider.dart';

class PreviewAquaStop extends StatefulWidget {
  const PreviewAquaStop({Key? key}) : super(key: key);

  @override
  _PreviewAquaStopState createState() => _PreviewAquaStopState();
}

class _PreviewAquaStopState extends State<PreviewAquaStop> {
  var _currentSliderValue = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal:10),
      child: Container(
        width: double.infinity,
        child: Card(elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child:                 Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text('Аквастоп',style: TextStyle(
                    //color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w400),),
                ),
                Row(children: [
                  Expanded(
                    child: InkWell(
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
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        child: Container(
                          //width: 180,
                          height: 70,
                          child: Card(elevation: 20,
                            color: _currentSliderValue ? Colors.redAccent : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Center(
                                child: _currentSliderValue ? Text('ПРОТЕЧКА',style: TextStyle(
                                  //color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600),) : Text('Устранено',style: TextStyle(
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
                        height: 60,
                        // child: Card(elevation: 20,
                        //   //color:Colors.redAccent,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(25.0),
                        //   ),
                           child:
                           //Column(
                          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //     children: [
                          //       Text('Счетчик',style: TextStyle(
                          //         //color: Colors.black,
                          //           fontSize: 22,
                          //           fontWeight: FontWeight.w400),),
                                Card(elevation: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Center(
                                      child: Text('    0.700    ',style: TextStyle(
                                        //color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),),
                                    ),
                                  ),
                                //),

                          //     ]
                          // ),
                        ),
                      ),
                    ),
                  ),
                ],),

              ],
            ),
          ),

        ),
      ),
    );
  }
}
