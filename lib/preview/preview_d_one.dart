import 'package:flutter/material.dart';
import 'package:m_home/providers/data.dart';
import 'package:provider/provider.dart';

class PreviewDOne extends StatefulWidget {
  const PreviewDOne({Key? key}) : super(key: key);

  @override
  _PreviewDOneState createState() => _PreviewDOneState();
}

class _PreviewDOneState extends State<PreviewDOne> {
  var _currentSliderValue = true;
  var switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        width: double.infinity,
        child: Card(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    'D1',
                    style: TextStyle(
                      //color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (switchValue) {
                              switchValue = false;
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Container(
                            //width: 180,
                            height: 70,
                            child: Card(
                              elevation: 20,
                              // color: switchValue
                              //     ? Colors.redAccent
                              //     : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Center(
                                  child: !switchValue
                                      ? Text(
                                    '0 %',
                                    style: TextStyle(
                                      //color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  )
                                      : Text(
                                    'Выкл',
                                    style: TextStyle(
                                      //color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
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
                          height: 70,
                          child: Card(
                            elevation: 20,
                            // color: _currentSliderValue
                            //     ? Colors.redAccent
                            //     : Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child:
                            Padding(
                              padding: const EdgeInsets.all(1),
                              child: Center(
                                child: Switch(
                                  value: switchValue,
                                  onChanged: (value) {
                                    setState(() {
                                      if(switchValue) {
                                        switchValue = false;
                                      } else {
                                        switchValue = true;
                                      }

                                    });
                                  },
                                  activeTrackColor: Colors.yellow,
                                  activeColor: Colors.orangeAccent,
                                ),

                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (!switchValue) {
                              switchValue = true;
                            }
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Container(
                            //width: 180,
                            height: 70,
                            child: Card(
                              elevation: 20,
                              // color: switchValue
                              //     ? Colors.redAccent
                              //     : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Center(
                                  child: switchValue
                                      ? Text(
                                    '100%',
                                    style: TextStyle(
                                      //color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  )
                                      : Text(
                                    'ВКЛ',
                                    style: TextStyle(
                                      //color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
