import 'package:flutter/material.dart';
import 'package:m_home/providers/data.dart';
import 'package:provider/provider.dart';

class PreviewFourCh extends StatefulWidget {
  const PreviewFourCh({Key? key}) : super(key: key);

  @override
  _PreviewFourChState createState() => _PreviewFourChState();
}

class _PreviewFourChState extends State<PreviewFourCh> {
  var _currentSliderValue = false;
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
                  child: Text('4CH',style: TextStyle(
                    //color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w400),),
                ),
                Row(children: [
                  Expanded(
                      child:  Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        child: Container(
                          //width: 180,
                          height: 50,
                          child: Card(elevation: 20,
                            color: Colors.white,
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(25.0),
                            // ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              CircleAvatar(backgroundColor: Colors.red,
                                  radius: 15),
                              CircleAvatar(backgroundColor: Colors.red,
                                  radius: 15),
                              CircleAvatar(backgroundColor: Colors.red,
                                  radius: 15),
                              CircleAvatar(backgroundColor: Colors.red,
                                  radius: 15),

                            ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  //),
                ],),

              ],
            ),
          ),

        ),
      ),
    );
  }
}
