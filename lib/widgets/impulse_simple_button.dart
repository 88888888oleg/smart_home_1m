


import 'package:flutter/material.dart';
//ignore: must_be_immutable
class ImpulseButtonWidget extends StatefulWidget {
  ImpulseButtonWidget({Key? key,
    this.unit = 'сек',
    this.defaultPadding = 0.0,
    this.timeToButton = 15.0,
    required this.callback,
    this.inableButtonLabel = '  Звонок  ',}) : super(key: key);

  final double defaultPadding;
  final String inableButtonLabel;
  final Function callback;
  final String unit;
  final double timeToButton;

  @override
  _ImpulseButtonWidgetState createState() => _ImpulseButtonWidgetState();
}

class _ImpulseButtonWidgetState extends State<ImpulseButtonWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(widget.defaultPadding),
      child:

      InkWell(
        onTap: (){
          widget.callback();
        },
        child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 19),
          child: Container(
            height: 60,
            width: double.infinity,
            child: Card(elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color:  null,
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: Center(
                  child: Text('${widget.inableButtonLabel} на ${widget.timeToButton} ${widget.unit}',style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400),),
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }
}

