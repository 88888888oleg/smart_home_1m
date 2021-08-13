import 'package:flutter/material.dart';
//import 'package:account_manager_plugin/account_manager_plugin.dart';

class ScenarioScreen extends StatelessWidget {
  const ScenarioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: Card(
      elevation: 20,
      child: Center(child: Text('Нет активных сценариев',style: TextStyle(
          shadows: [Shadow(color: Colors.blue.shade100,blurRadius: 5, offset: Offset(5, -5)),
            //Shadow(color: Colors.black, blurRadius: 38, offset: Offset(5, -10))
          ],
          //color: Colors.black38,
          fontSize: 22,
          fontWeight: FontWeight.w400),)),
    ),);
  }
}
