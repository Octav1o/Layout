import 'package:flutter/material.dart';
import 'package:flutter_application_4/widget/carousel.dart';
import 'package:flutter_application_4/widget/textSection.dart';
import 'package:flutter_application_4/widget/tittleSection.dart';
import 'widget/buildbutton.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buttonColumn(color: color, icon: Icons.call, label: 'CALL',),
        buttonColumn(color: color, icon: Icons.near_me, label: 'ROUTE'),
        buttonColumn(color: color, icon: Icons.share, label: 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Carousel(),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
