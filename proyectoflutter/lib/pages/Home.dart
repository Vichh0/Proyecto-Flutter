import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyectoflutter/pages/Games.dart';
import 'package:proyectoflutter/pages/User.dart';
import 'package:proyectoflutter/pages/Routine.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
} 

class _HomePageState extends State<HomePage> {
  int Index = 0;
  static const List<Widget> Options = <Widget>[
    Text(
      'Index 0: Home'
    ),
    Text(
      'Index 1: Juegos'
    ),
    Text(
      'Index 2: Rutina'
    ),
    Text(
      'Index 3: Historial'
    )
  ];
  void _onItemTapped(int index) {
    setState(() {
      Index = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Center(
        child: Options[Index],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: const Text('Home'),
              selected: Index == 0,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Juegos'),
              selected: Index == 1,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Rutinas'),
              selected: Index == 2,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Historial'),
              selected: Index == 3,
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}