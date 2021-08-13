import 'package:flutter/material.dart';
import 'package:m_home/providers/test_device_provider.dart';
import 'package:provider/provider.dart';

class SlyderWithButtons extends StatelessWidget {
  SlyderWithButtons({Key? key,
    this.minSlyderValue = 0.0,
    this.maxSlyderValue = 100.0,
    this.divisions = 100,
    this.currentSliderValue = 10,
    this.defaultPadding = 0.0,
    required this.callback,
    this.disableButtonLabel = 'Выкл',
    this.unit = '%',
    this.inableButtonLabel = '  ВКЛ  ',}) : super(key: key);

  final double minSlyderValue;
  final double maxSlyderValue;
  final int divisions;
  final double currentSliderValue;
  final double defaultPadding;
  final String disableButtonLabel;
  final String inableButtonLabel;
  final String unit;
  final void Function(double) callback;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(defaultPadding),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 130,
                height: 80,
                child: TextButton(
                    onPressed: () => callback(0),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(disableButtonLabel,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w400),),
                    ),
                    style: ButtonStyle(
                        backgroundColor: currentSliderValue <= 0
                            ? MaterialStateProperty.all(Colors.lightBlue)
                            : MaterialStateProperty.all(Colors.white),
                        elevation: MaterialStateProperty.all(20.0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(color: Colors.red))))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: 130,
                height: 80,
                child: TextButton(
                    onPressed: () {
                      callback(100);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: currentSliderValue > 0
                          ? Text(
                              '  ${currentSliderValue.round().toString()} $unit ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            )
                          : Text(
                        inableButtonLabel,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                    ),
                    style: ButtonStyle(
                        backgroundColor: currentSliderValue > 0
                            ? MaterialStateProperty.all(Colors.lightBlue)
                            : MaterialStateProperty.all(Colors.white),
                        elevation: MaterialStateProperty.all(20.0),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(color: Colors.red))))),
              ),
            ),
          ],
        ),
        Slider(
          value: currentSliderValue,
          min: minSlyderValue,
          max: maxSlyderValue,
          divisions: divisions,
          label: currentSliderValue.round().toString() + ' $unit',
          onChanged: (double value) {
            callback(value);
            //changedSliderValue=value;
            //Provider.of<TestDeviceProvider>(context, listen: true)
                //.changeSliderValue(value);
            // setState(() {
            // _currentSliderValue = value;
            // });
          },
        ),
      ]),
    );
  }
}

