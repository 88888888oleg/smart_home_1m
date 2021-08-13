import 'package:flutter/material.dart';
import 'package:m_home/models/mainDrawer.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);
  static const String routeName = '/HelpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Справка')),
    drawer: MainDrawer(),
    body: SafeArea(
        child:  Container(child: Center(child: Text('Справка')),),
    ));

  }
}
