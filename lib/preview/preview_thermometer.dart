import 'package:flutter/material.dart';
import 'package:m_home/providers/data.dart';
import 'package:provider/provider.dart';

class PreviewThermometer extends StatelessWidget {
  const PreviewThermometer({Key? key}) : super(key: key);

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
        child: Text('Термометр',style: TextStyle(
          //color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w400),),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text('Температура DS18',style: TextStyle(
                // shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                //   //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                // ],
                //color: Colors.black38,
                fontSize: 22,
                fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text('${((Provider.of<Data>(context, listen: true).getGenValue() /10 ).roundToDouble())}  °с       ',style: TextStyle(
                // shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
                //   //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
                // ],
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400),),
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
