import 'dart:async';

import 'package:flutter/material.dart';
import 'package:m_home/brains/slyder_brain.dart';
import 'package:m_home/models/gen.dart';
import 'package:m_home/providers/data.dart';
import 'package:m_home/providers/test_device_provider.dart';
import 'package:m_home/widgets/big_off_button.dart';
import 'package:m_home/widgets/big_on_button.dart';
import 'package:m_home/widgets/big_stop_button.dart';
import 'package:m_home/widgets/impulse_simple_button.dart';
import 'package:m_home/widgets/little_off_button.dart';
import 'package:m_home/widgets/little_on_button.dart';
import 'package:m_home/widgets/simple_slyder.dart';
import 'package:m_home/widgets/slyder_with_buttons.dart';
import 'package:m_home/widgets/state_ui.dart';
import 'package:provider/provider.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class TestDeviceScreen extends StatefulWidget {
   TestDeviceScreen({Key? key}) : super(key: key);
  static const String routeName = '/TestDeviceScreen';

  @override
  _TestDeviceScreenState createState() => _TestDeviceScreenState();
}

class _TestDeviceScreenState extends State<TestDeviceScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Text('Входящий канал, получает состояние из устройства, по умолчанию 35, может полчать тип(градусы, влажность и т.п.)',style: TextStyle(fontSize: 20),)),
            Center(child: StateUiWidget(valueFromDevice: Provider.of<TestDeviceProvider>(context, listen: true).getThermometrValue())),
            Center(child: Text('Слайдер, при изменении пользователем через 10 сек получает состояние из устройства, по умолчанию 25',style: TextStyle(fontSize: 20),)),
            SlyderWithButtons(callback:  Provider.of<TestDeviceProvider>(context, listen: false).changeSliderValue,
              currentSliderValue: Provider.of<TestDeviceProvider>(context, listen: true).slyderValue,
                  ),
            Center(child: Text('Слайдер с условием смены отображения и сохранением состояния.',style: TextStyle(fontSize: 20),)),

            if(Provider.of<TestDeviceProvider>(context, listen: false)
                .instance1.idUi == 1) SlyderWithButtons(callback:  Provider.of<TestDeviceProvider>(context, listen: false).changeSliderValue1,
              currentSliderValue: Provider.of<TestDeviceProvider>(context, listen: true).slyderValue1,
            ),
            if(Provider.of<TestDeviceProvider>(context, listen: false)
                .instance1.idUi == 0) SimpleSlyder(
              callback: Provider.of<TestDeviceProvider>(context, listen: false).changeSliderValue1, currentSliderValue: Provider.of<TestDeviceProvider>(context, listen: true).slyderValue1,),

            Center(
              child: Container(child: TextButton(style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.lightBlue)),
                onPressed: (){
                setState(() {
                  Provider.of<TestDeviceProvider>(context, listen: false).setInputState();
                });

              }, child: Text('Клик для смены скина',style: TextStyle(fontSize: 25),),) ,),
            ),



            Center(child: Text('Кнопка выкл, отсылает на устройство состояние, принимает из устройства состояние. Анимация на период ожидания (10 сек).\r\n большие кнопки вкл, выкл и стоп работают вместе.',style: TextStyle(fontSize: 20),)),

            if(Provider.of<TestDeviceProvider>(context, listen: false)
                .instanceOffButton.idUi == 0) BigOffButton(callback: Provider.of<TestDeviceProvider>(context, listen: false).offFunctionInstanceOffButton, currentStateValue: Provider.of<TestDeviceProvider>(context, listen: false).stateValueOffButton,),
            Center(child: Text('Кнопка стоп, отсылает на устройство состояние, не принимает из устройства состояние. ',style: TextStyle(fontSize: 20),)),

            if(Provider.of<TestDeviceProvider>(context, listen: false)
                .instanceStopButton.idUi == 0) BigStopButton(callback: Provider.of<TestDeviceProvider>(context, listen: false).stopFunctionInstanceStopButton,),
            Center(child: Text('Кнопка вкл, отсылает на устройство состояние, принимает из устройства состояние. Анимация на период ожидания (10 сек).',style: TextStyle(fontSize: 20),)),

            if(Provider.of<TestDeviceProvider>(context, listen: false)
                .instanceOnButton.idUi == 0) BigOnButton(callback: Provider.of<TestDeviceProvider>(context, listen: false).onFunction, currentStateValue: Provider.of<TestDeviceProvider>(context, listen: false).stateValueOnButton,),
            Center(child: Text('Маленькие кнопки вкл и выкл отсылают на устройство состояние, принимают из устройства состояние. Анимация на период ожидания (10 сек).',style: TextStyle(fontSize: 20),)),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if(Provider.of<TestDeviceProvider>(context, listen: false)
                    .instanceOnButton1.idUi == 0) LittleOnButton(callback: Provider.of<TestDeviceProvider>(context, listen: false).onFunction4, currentStateValue: Provider.of<TestDeviceProvider>(context, listen: false).stateValueOnButton4,),
                if(Provider.of<TestDeviceProvider>(context, listen: false)
                    .instanceOffButton1.idUi == 0) LittleOffButton(callback: Provider.of<TestDeviceProvider>(context, listen: false).offFunctionInstanceOffButton1, currentStateValue: Provider.of<TestDeviceProvider>(context, listen: false).stateValueOffButton1,),

              ],),
            Center(child: Text('Импульсная кнопка, может отправлять вкл и выкл (0 и 1), может отпрвлять (необязательно) число которое, если нужно, можно как нибудь задать, через настройки или текстовое поле показать для ввода',style: TextStyle(fontSize: 20),)),

            if(Provider.of<TestDeviceProvider>(context, listen: false)
                .instanceImpulseButton.idUi == 0) ImpulseButtonWidget(callback: Provider.of<TestDeviceProvider>(context, listen: false).sendImpulseButton, timeToButton:  Provider.of<TestDeviceProvider>(context, listen: false).simpleTime),

          ],
        ),
      )),
      // Center(
      //   child: Container(child: TextButton(onPressed: (){
      //     Provider.of<TestDeviceProvider>(context, listen: false)
      //         .printMix();
      //   }, child: Text('text'),) ,),
      // ),
    );
  }
}
