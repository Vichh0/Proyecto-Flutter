import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyectoflutter/pages/Games.dart';
import 'package:proyectoflutter/pages/User.dart';
import 'package:proyectoflutter/pages/Routine.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('HOME'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('HOME PAGE'),
          ],
        ),
      ),
    );
  }
} 