import 'package:flutter/material.dart';
import 'package:m_home/providers/data.dart';
import 'package:m_home/screens/addTaskScreen.dart';
import 'package:m_home/screens/devices_screens/aqua_stop.dart';
import 'package:m_home/screens/devices_screens/counter_screen.dart';
import 'package:m_home/screens/devices_screens/d_one.dart';
import 'package:m_home/screens/devices_screens/four_channels.dart';
import 'package:m_home/screens/devices_screens/rollets_screen.dart';
import 'package:m_home/screens/devices_screens/test_device_screen.dart';
import 'package:m_home/screens/helpScreen.dart';
import 'package:m_home/screens/login_screen.dart';
import 'package:m_home/screens/devices_screens/thermometer_screen.dart';
import 'package:provider/provider.dart';

class MainDrawer extends StatelessWidget {

  ListTile buildListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(title),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            height: 120,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Меню',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Theme.of(context).bottomAppBarColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'На главную',
            Icons.favorite,
            () {
              // Navigator.of(context).popUntil((route) {
              //   return route.isFirst;
              // });
              Navigator.of(context).pushReplacementNamed('/');

            },
          ),
          buildListTile('TestDeviceScreen', Icons.precision_manufacturing_outlined, () {
            Navigator.of(context).pushNamed(TestDeviceScreen.routeName);
          }),
          ListTile(
            leading: Provider.of<Data>(context, listen: true).getEnable() ?
            Icon(Icons.accessibility_new_outlined, size: 26,): Icon(Icons.dangerous, size: 26,),
            title: Provider.of<Data>(context, listen: true).getEnable() ? Text('Пользователь Test') : Text('Авторизация'),
            onTap: () {
              Provider.of<Data>(context, listen: false).enable ? null :Navigator.of(context).pushNamed(LoginScreen.routeName);
            },
          ),
          buildListTile('Добавить устройство', Icons.add, () {
            Navigator.of(context).pushNamed(AddTaskScreen.routeName);
          }),
          buildListTile('DOne', Icons.airplay_sharp, () {
            Navigator.of(context).pushNamed(DOne.routeName);
          }),
          // buildListTile('Термометр', Icons.airplay_sharp, () {
          //   Navigator.of(context).pushNamed(Thermometer.routeName);
          // }),
          // buildListTile('Антипротечка', Icons.airplay_sharp, () {
          //   Navigator.of(context).pushNamed(AquaStop.routeName);
          // }),
          buildListTile('Справка', Icons.help, () {
            Navigator.of(context).pushNamed(HelpScreen.routeName);
          }),
          if (Provider.of<Data>(context, listen: true).getEnable())buildListTile('Выход из аккаунта', Icons.dangerous, () {
            Provider.of<Data>(context, listen: false).exit();
            //Navigator.of(context).pushNamed(SecondPage.routeName,arguments: '777064591');
          }),
        ],
      ),
    );
  }
}
//Provider.of<Data>(context, listen: true).getEnable() ? Text('Пользователь Test') : Text('Авторизация'),
