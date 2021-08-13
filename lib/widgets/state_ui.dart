import 'package:flutter/material.dart';

class StateUiWidget extends StatelessWidget {
  const StateUiWidget({Key? key,
    this.name = 'Термометр',
    this.unit = '°с',
    required this.valueFromDevice}) : super(key: key);

  final String name;
  final String unit;
  final double valueFromDevice;

  @override
  Widget build(BuildContext context) {
    return Container(child:
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name ,style: TextStyle(
                shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                ],
                fontSize: 22,
                fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$valueFromDevice  $unit       ',style: TextStyle(
                shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                ],
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400),),
          ),
        ],),
    ),

        );
  }
}
