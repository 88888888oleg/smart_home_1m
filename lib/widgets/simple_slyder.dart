import 'package:flutter/material.dart';
import 'package:m_home/providers/test_device_provider.dart';
import 'package:provider/provider.dart';

class SimpleSlyder extends StatelessWidget {
  SimpleSlyder({Key? key,
    required this.currentSliderValue,
    this.defaultPadding = 0.0,
    //required this.disableButtonProvider,
    //required this.inableButtonProvider,
    required this.callback,
    //this.disableButtonLabel = 'Выкл',
    this.unit = '%',
    //this.inableButtonLabel = '  ВКЛ  '
  });

  final double currentSliderValue;
  final double defaultPadding;
  //final VoidCallback disableButtonProvider;
  //final VoidCallback inableButtonProvider;
  //final String disableButtonLabel;
  //final String inableButtonLabel;
  final String unit;
  final void Function(double) callback;

  //  TestDeviceProvider

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(defaultPadding),
      child: Column(children: [
        Center(child: Card(elevation: 20, child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(currentSliderValue.round().toString() + ' $unit', style: TextStyle(fontSize: 30),),
        ),)),
        Slider(
          value: currentSliderValue,
          min: 0,
          max: 100,
          divisions: 20,
          label: currentSliderValue.round().toString() + ' $unit',
          onChanged: (double value) {
            callback(value);
          },
        ),
      ]),
    );
  }
}

