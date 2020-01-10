import 'package:disenio/src/pages/basico_page.dart';
import 'package:disenio/src/pages/botones_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico':(BuildContext context)=>BasicoPage(),
        'botones':(BuildContext context)=>BotonesPage()
      },
    );
  }
} 