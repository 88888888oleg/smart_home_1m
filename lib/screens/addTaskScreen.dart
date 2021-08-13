import 'package:flutter/material.dart';
//import 'package:udp/udp.dart';
import 'dart:io';

import 'package:m_home/models/mainDrawer.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);
  static const String routeName = '/AddTaskScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        body: Container(
      child: Center(child: Text('AddTaskScreen')),
    ));
  }
}
