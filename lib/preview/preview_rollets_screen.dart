import 'package:flutter/material.dart';
import 'package:m_home/providers/data.dart';
import 'package:provider/provider.dart';

class PreviewRolletsScreen extends StatefulWidget {
  const PreviewRolletsScreen({Key? key}) : super(key: key);

  @override
  _PreviewRolletsScreenState createState() => _PreviewRolletsScreenState();
}

class _PreviewRolletsScreenState extends State<PreviewRolletsScreen> {
  var _currentSliderValue = true;
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
                    '1M_ROLLER1101',
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
                            if (_currentSliderValue) {
                              _currentSliderValue = false;
                            } else {
                              _currentSliderValue = true;
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
                              color: _currentSliderValue
                                  ? Colors.redAccent
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Center(
                                  child: _currentSliderValue
                                      ? Text(
                                          'ОТКР',
                                          style: TextStyle(
                                              //color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        )
                                      : Text(
                                          'ОТКР',
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
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (_currentSliderValue) {
                              _currentSliderValue = false;
                            } else {
                              _currentSliderValue = true;
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
                              color: _currentSliderValue
                                  ? Colors.redAccent
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Center(
                                  child: _currentSliderValue
                                      ? Text(
                                          'СТОП',
                                          style: TextStyle(
                                              //color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        )
                                      : Text(
                                          'СТОП',
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
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (_currentSliderValue) {
                              _currentSliderValue = false;
                            } else {
                              _currentSliderValue = true;
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
                              color: _currentSliderValue
                                  ? Colors.redAccent
                                  : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: Center(
                                  child: _currentSliderValue
                                      ? Text(
                                          'ЗАКР',
                                          style: TextStyle(
                                              //color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        )
                                      : Text(
                                          'ЗАКР',
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
