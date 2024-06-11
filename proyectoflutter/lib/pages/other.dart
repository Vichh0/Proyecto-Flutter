import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyectoflutter/pages/Acses.dart';
import 'package:proyectoflutter/pages/Games.dart';
import 'package:proyectoflutter/pages/Home.dart';
import 'package:proyectoflutter/pages/User.dart';
import 'package:proyectoflutter/pages/Routine.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyApp createState() => _MyApp();
}
class _MyApp extends State<MyApp>{
int currentPageIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    GameRoute(),
    RutineRoute(),
    UserRoute(),
  ];
  
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15));

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(currentPageIndex),
        ),
        bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.cyan,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.games_outlined),
            label: 'Juegos',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Rutinas',
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(Icons.account_circle_sharp),
            ),
            label: 'Usuario',
          ),
        ],
      ),
    );
  }
}

