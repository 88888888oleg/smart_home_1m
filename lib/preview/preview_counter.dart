import 'package:flutter/material.dart';
import 'package:m_home/models/gen.dart';
import 'package:m_home/providers/data.dart';
import 'package:provider/provider.dart';

class PreviewCounter extends StatefulWidget {
  const PreviewCounter({Key? key}) : super(key: key);

  @override
  _PreviewCounterState createState() => _PreviewCounterState();
}

class _PreviewCounterState extends State<PreviewCounter> {
  var val = 0;
  @override
  void initState() {
    // Generator.instance.genValue.listen((event) {
    //
    //   val = event;
    //   Provider.of<Data>(context, listen: false).setGenValue(val);
    // print('$val - ${DateTime.now().second}');
    // });
    super.initState();
  }
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
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    type: MaterialType.transparency,
                    child: Text('Счетчик',style: TextStyle(
                      //color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('${(Provider.of<Data>(context, listen: false).getGenValue()).roundToDouble()} В',style: TextStyle(
                      //color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),),

                    Text('${(Provider.of<Data>(context, listen: false).getGenValue())*(Provider.of<Data>(context, listen: false).getGenValue() /20 ).roundToDouble()} Вт',style: TextStyle(
                      //color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400),),
                    Text('${(Provider.of<Data>(context, listen: false).getGenValue() /20 ).roundToDouble()} A',style: TextStyle(
                      //color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),),

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
