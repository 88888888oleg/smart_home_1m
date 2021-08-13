
// большая кнопка на всю ширину экрана

import 'package:flutter/material.dart';
//ignore: must_be_immutable
class BigOnButton extends StatefulWidget {
  BigOnButton({Key? key,
    this.currentStateValue = 0,
    this.defaultPadding = 0.0,
    required this.callback,
    this.tempLabel = 'Включается',
    this.afterEnableLabel = 'Включено',
    this.inableButtonLabel = '  ВКЛ  ',}) : super(key: key);

  final double defaultPadding;
  final String tempLabel;
  final String inableButtonLabel;
  final Function callback;
  late int currentStateValue;
  final String afterEnableLabel;

  @override
  _BigOnButtonState createState() => _BigOnButtonState();
}

class _BigOnButtonState extends State<BigOnButton> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(widget.defaultPadding),
      child:InkWell(
        onTap: (){
          setState(() {
            widget.currentStateValue = 2;
          });
          widget.callback();
        },
        child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 19),
          child: Container(
            height: 150,
            width: double.infinity,
            child: Card(elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: widget.currentStateValue == 0 || widget.currentStateValue == 1 ? null : Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(1),
                child:
                Center(
                  child: widget.currentStateValue == 0 ?
    Text(widget.inableButtonLabel,style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w400),)
                      : TextAfterInabled( widget.currentStateValue, widget.afterEnableLabel ,widget.tempLabel),
                ),

              ),
            ),
          ),
        ),
      ),

    );
  }
}

class TextAfterInabled extends StatelessWidget {
  final int currentStateValue;
  final String inableButtonLabel;
  final String tempLabel;

  TextAfterInabled(this.currentStateValue, this.inableButtonLabel, this.tempLabel);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: currentStateValue == 1 ?
      Text(inableButtonLabel,style: TextStyle(
        //color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w400),) :
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(tempLabel,style: TextStyle(
            //color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w400),),
          CircularProgressIndicator(),
        ],
      ),


    );
  }
}
