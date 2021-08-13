

import 'package:flutter/material.dart';
import 'package:m_home/models/mainDrawer.dart';
import 'package:m_home/providers/data.dart';
import 'package:m_home/screens/scenarioScreen.dart';
import 'package:provider/provider.dart';

import 'addTaskScreen.dart';
import 'categoriesScreen.dart';
import 'favoritesScreen.dart';

class TabsScreen extends StatefulWidget {
  TabsScreen({Key? key, }) : super(key: key);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}
class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages = [
    {'page': FavoritesScreen(), 'title' : 'Избранное'},
    {'page': CategoriesScreen(), 'title': 'Все'},
    //{'page': SchedulerViewScreen(), 'title' : 'Активные напоминания'},
    {'page': ScenarioScreen(), 'title' : 'Сценарии'},

  ];
  var _selectedPageIndex = 0;
  void _selectScreen(int index) {
    setState(() {
      Provider.of<Data>(context, listen: false).selectedPageIndex = index;
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _selectedPageIndex = Provider.of<Data>(context, listen: false).selectedPageIndex;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
              AddTaskScreen.routeName
          );
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
      ),
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      body: SafeArea(child:  _pages[_selectedPageIndex]['page'] as Widget),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white,
          // // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          // primaryColor: Colors.white,
          // textTheme: Theme
          //     .of(context)
          //     .textTheme
          //     .copyWith(caption: new TextStyle(color: Colors.yellow))
        ), // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          onTap: _selectScreen,
          //fixedColor: Colors.green,
          backgroundColor: Colors.red,
          //Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          //Theme.of(context).primaryColor,
          selectedItemColor: Colors.white,
          //Theme.of(context).primaryColor,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: _selectedPageIndex == 0 ? Icon(Icons.favorite) : Icon(Icons.favorite_border), label: 'Избранное',),
            BottomNavigationBarItem(
              icon: Icon(Icons.padding), label: 'Все',),
            BottomNavigationBarItem(
              icon: Icon(Icons.schedule), label: 'Сценарии',),

            // BottomNavigationBarItem(
            //   icon: Icon(Icons.calendar_today_outlined), label: tabsScreenLabelWork,),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.copy), label: tabsScreenLabelAirplaySharp,),
          ],
        ),

      ),

    );
  }
}
