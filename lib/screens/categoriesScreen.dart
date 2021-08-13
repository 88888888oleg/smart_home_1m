import 'package:flutter/material.dart';
import 'package:m_home/preview/preview_d_one.dart';
import 'package:m_home/preview/preview_four_ch.dart';
import 'package:m_home/preview/preview_rollets_screen.dart';
import 'package:m_home/providers/data.dart';
import 'package:provider/provider.dart';
import 'package:m_home/preview/preview_counter.dart';
import 'package:m_home/preview/preview_thermometer.dart';
import 'package:m_home/preview/preview_aqua_stop.dart';
import 'package:m_home/screens/devices_screens/thermometer_screen.dart';

import 'devices_screens/aqua_stop.dart';
import 'devices_screens/counter_screen.dart';
import 'devices_screens/d_one.dart';
import 'devices_screens/four_channels.dart';
import 'devices_screens/rollets_screen.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

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
                    InkWell(onTap: () {
                      Navigator.of(context).pushNamed(FourChannels.routeName);
                    },
                        child: PreviewFourCh()),
                    InkWell(onTap: () {
                      Navigator.of(context).pushNamed(RolletsScreen.routeName);
                    },
                        child: PreviewRolletsScreen()),
                    InkWell(onTap: () {
                      Navigator.of(context).pushNamed(DOne.routeName);
                    },
                        child: PreviewDOne()),


                  ]),
            ) : Center(child: Text('Вы не авторизованы'));

          }),);
  }

}
