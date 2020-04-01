import 'package:flutter/material.dart';
import 'package:design_app_flutter/src/pages/scroll_page.dart';
import 'package:design_app_flutter/src/pages/basic_page.dart';
import 'package:design_app_flutter/src/pages/botones_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs App',
      initialRoute: 'scroll',
      routes: {
        'scroll': (BuildContext context) => ScrollPage(),
        'basic': (BuildContext context) => BasicPage(),
        'botones': (BuildContext context) => BotonesPage(),
      },
    );
  }
}