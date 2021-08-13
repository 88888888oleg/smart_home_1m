
// большая кнопка на всю ширину экрана

import 'package:flutter/material.dart';
//ignore: must_be_immutable
class LittleOffButton extends StatefulWidget {
  LittleOffButton({Key? key,
    this.currentStateValue = 0,
    this.defaultPadding = 0.0,
    required this.callback,
    this.tempLabel = 'Выключается',
    this.afterEnableLabel = 'Выключено',
    this.inableButtonLabel = '  ВЫКЛ  ',}) : super(key: key);

  final double defaultPadding;
  final String tempLabel;
  final String inableButtonLabel;
  final Function callback;
  late int currentStateValue;
  final String afterEnableLabel;

  @override
  _LittleOffButtonState createState() => _LittleOffButtonState();
}

class _LittleOffButtonState extends State<LittleOffButton> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(widget.defaultPadding),
      child:InkWell(
        onTap: (){
          widget.callback();
        },
        child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 19),
          child: Container(
            height: 70,
            width: 120,
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
          fontSize: 19,
          fontWeight: FontWeight.w400),) :
          CircularProgressIndicator(),
    );
  }
}
