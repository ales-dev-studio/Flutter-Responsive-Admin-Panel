import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'map_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            FaIcon(FontAwesomeIcons.grip),
            FaIcon(FontAwesomeIcons.users),
            FaIcon(FontAwesomeIcons.bagShopping),
            FaIcon(FontAwesomeIcons.solidFile),
            FaIcon(FontAwesomeIcons.chartPie),
            FaIcon(FontAwesomeIcons.solidBell),
            FaIcon(FontAwesomeIcons.solidClock),
            FaIcon(FontAwesomeIcons.solidCircleQuestion),
            FaIcon(FontAwesomeIcons.solidMoon),
            FaIcon(FontAwesomeIcons.magnifyingGlass),
            MapWidget(),
          ],
        ),
      ),
    );
  }
}
