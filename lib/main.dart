
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:m_home/models/gen.dart';
import 'package:m_home/providers/data.dart';
import 'package:m_home/providers/test_device_provider.dart';
import 'package:m_home/providers/theme_provirer.dart';
import 'package:m_home/screens/addTaskScreen.dart';
import 'package:m_home/screens/devices_screens/aqua_stop.dart';
import 'package:m_home/screens/devices_screens/counter_screen.dart';
import 'package:m_home/screens/devices_screens/four_channels.dart';
import 'package:m_home/screens/devices_screens/rollets_screen.dart';
import 'package:m_home/screens/devices_screens/test_device_screen.dart';
import 'package:m_home/screens/helpScreen.dart';
import 'package:m_home/screens/login_screen.dart';
import 'package:m_home/screens/tabs_screen.dart';
import 'package:m_home/screens/devices_screens/thermometer_screen.dart';
import 'package:provider/provider.dart';

import 'screens/devices_screens/d_one.dart';

// /// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].
//
// void main() {
//   runApp(
//     /// Providers are above [MyApp] instead of inside it, so that tests
//     /// can use [MyApp] while mocking the providers
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => Data()),
//       ],
//       child: const MyApp(),
//     ),
//   );
// }
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const <Widget>[
//             Text('You have pushed the button this many times:'),
//
//             /// Extracted as a separate widget for performance optimization.
//             /// As a separate widget, it will rebuild independently from [MyHomePage].
//             ///
//             /// This is totally optional (and rarely needed).
//             /// Similarly, we could also use [Consumer] or [Selector].
//             Count(),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         key: const Key('increment_floatingActionButton'),
//
//         /// Calls `context.read` instead of `context.watch` so that it does not rebuild
//         /// when [Counter] changes.
//         onPressed: () => Provider.of<Data>(context,listen: false).enableValues(),
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class Count extends StatelessWidget {
//   const Count({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//
//       /// Calls `context.watch` to make [Count] rebuild when [Counter] changes.
//         //'${context.watch<Data>().genValue}',
//         '${Provider.of<Data>(context,listen: true).genValue}',
//         key: const Key('counterState'),
//         style: Theme.of(context).textTheme.headline4);
//   }
// }


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  Generator.instance.start();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application. TestDeviceProvider
  @override
  Widget build(BuildContext context) {
    return
      // ChangeNotifierProvider<Data>(
      //   create: (_) => Data(),
      MultiProvider(
          providers: [
            ChangeNotifierProvider<TestDeviceProvider>(create: (_) => TestDeviceProvider()),
            ChangeNotifierProvider<Data>(create: (_) => Data()),
            //Provider<AnotherThing>(create: (_) => AnotherThing()),
          ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: [
              // AppLocalizations.delegate,
              // GlobalMaterialLocalizations.delegate,
              // GlobalCupertinoLocalizations.delegate,
              // GlobalWidgetsLocalizations.delegate,
            ],
            //supportedLocales: L10n.all,
            // supportedLocales: [
            //   const Locale('en', 'RU'), // English, no country code
            //   const Locale('ru', 'US'), // Spanish, no country code
            // ],
            title: '1M',
            themeMode: ThemeMode.system,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,

            //initialRoute: widget.initialRoute,
            initialRoute: '/',
            routes: {
              '/': (ctx) => TabsScreen(),
              AddTaskScreen.routeName: (ctx) => AddTaskScreen(),
              //AddCardScreen.routeName: (ctx) => AddCardScreen(),
              HelpScreen.routeName: (ctx) => HelpScreen(),
              CounterScreen.routeName: (ctx) => CounterScreen(),
              Thermometer.routeName: (ctx) => Thermometer(),
              AquaStop.routeName: (ctx) => AquaStop(),
              LoginScreen.routeName: (ctx) => LoginScreen(),
              FourChannels.routeName: (ctx) => FourChannels(),
              RolletsScreen.routeName: (ctx) => RolletsScreen(),
              DOne.routeName: (ctx) => DOne(),
              TestDeviceScreen.routeName: (ctx) => TestDeviceScreen(),


              //Schedule.routeName: (ctx) => Schedule(),
              //SecondPage.routeName: (_) => SecondPage(selectedNotificationPayload),
              //Schedule_drugs.routeName: (ctx) => Schedule_drugs(),
              //ScheduleCards.routeName: (ctx) => ScheduleCards(),
              //HelpScheduledScreen.routeName: (ctx) => HelpScheduledScreen(),

            }));
  }

}




class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('tile')),
        //drawer: MainDrawer(),
        body: SafeArea(
            child: FutureBuilder(
                future:
                    Provider.of<Data>(context, listen: false).enableValues(),
                builder: (ctx, snapshot) => Container(
                      // child: Center(
                      //   child: Text(Provider.of<Data>(ctx, listen: true)
                      //       .getGenValue()),
                      // ),
                    )))
    );
  }
}

Widget build(BuildContext context) {
  return ChangeNotifierProvider<Data>(
      create: (_) => Data(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ));
}
