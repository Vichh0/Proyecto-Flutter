import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyectoflutter/pages/Acses.dart';
import 'package:proyectoflutter/pages/Games.dart';
import 'package:proyectoflutter/pages/User.dart';
import 'package:proyectoflutter/pages/Routine.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Cyborg',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const Access(),
    );
  }
}

