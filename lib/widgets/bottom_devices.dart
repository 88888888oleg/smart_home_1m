
import 'package:flutter/material.dart';

class BottomDevices extends StatelessWidget {
  const BottomDevices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child:
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(children: [
          Icon(Icons.share),
          Text('Поделиться'),
        ],),
        Column(children: [
          Icon(Icons.favorite_border),
          Text('В Иибранное'),
        ],),
        Column(children: [
          Icon(Icons.delete_forever),
          Text('Удалить'),
        ],),
        Column(children: [
          Icon(Icons.assessment_outlined),
          Text('Статистика'),
        ],),
      ],),);
  }
}
