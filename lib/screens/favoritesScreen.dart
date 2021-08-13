import 'package:flutter/material.dart';
import 'package:m_home/preview/preview_counter.dart';
import 'package:m_home/preview/preview_thermometer.dart';
import 'package:m_home/providers/data.dart';
import 'package:m_home/preview/preview_aqua_stop.dart';
import 'package:m_home/screens/devices_screens/thermometer_screen.dart';
import 'package:provider/provider.dart';

import 'devices_screens/aqua_stop.dart';
import 'devices_screens/counter_screen.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: Provider.of<Data>(context, listen: false).enableValues(),
    builder: (ctx, snapshot) =>
    Consumer<Data>(builder: (ctx, inData, _) {
    return Provider.of<Data>(context, listen: true).getEnable() ?
      SingleChildScrollView(
        child: Column(
    children: [
        InkWell(onTap: () {
          Navigator.of(context).pushNamed(CounterScreen.routeName);
        },
            child: PreviewCounter()),
        InkWell(onTap: () {
          Navigator.of(context).pushNamed(Thermometer.routeName);
        },
            child: PreviewThermometer()),
        InkWell(onTap: () {
          Navigator.of(context).pushNamed(AquaStop.routeName);
        },
            child: PreviewAquaStop()),

    ]),
      ): Center(child: Text('Вы не авторизованы'));
    }),);
  }
}
