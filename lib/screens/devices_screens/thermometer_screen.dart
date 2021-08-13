
import 'package:flutter/material.dart';
import 'package:m_home/models/mainDrawer.dart';
import 'package:m_home/providers/data.dart';
import 'package:m_home/widgets/bottom_devices.dart';
import 'package:provider/provider.dart';

class Thermometer extends StatelessWidget {
  const Thermometer({Key? key}) : super(key: key);
  static const String routeName = '/Thermometer';

  @override
  Widget build(BuildContext context) {
    var gen = (Provider.of<Data>(context, listen: true).getGenValue() /1 ).roundToDouble();
    return Scaffold(
        appBar: AppBar(title: Text('Термометр')),
    drawer: MainDrawer(),
    body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Температура DS18',style: TextStyle(
                            shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                              //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                            ],
                            //color: Colors.black38,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${(gen/10)}  °с       ',style: TextStyle(
                            shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                              //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                            ],
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),),
                      ),
                    ],),
                  ),
                  /////////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Температура I2C',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              //color: Colors.black38,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${(gen/10.5).roundToDouble()}  °с       ',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                      ],),
                  ),
///////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Влажность I2C',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              //color: Colors.black38,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${(gen/9).roundToDouble()}  %        ',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                      ],),
                  ),
///////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Давление I2C',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              //color: Colors.black38,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${(gen*3.5).roundToDouble()}  мм...',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                      ],),
                  ),
///////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Освещенность',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              //color: Colors.black38,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('$gen  лк     ',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                      ],),
                  ),
///////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('CO₂',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              //color: Colors.black38,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${(gen*2).toInt()}  ppm     ',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                      ],),
                  ),
///////////////////////////////////
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('ADC',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              //color: Colors.black38,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text((gen/10000).toStringAsFixed(3) +'            ',style: TextStyle(
                              shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                                //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                              ],
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),),
                        ),
                      ],),
                  ),
                ],),
              ),

              BottomDevices(),

            ],
          ),
        ),
    ));
  }
}
