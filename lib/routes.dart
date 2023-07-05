
import 'package:flutter/cupertino.dart';
import 'package:hello/output.dart';
import 'package:hello/todo_screen.dart';
// import 'package:hello/details_screen.dart';
// import 'package:hello/home_screen.dart';
import 'package:hello/view_screen.dart';
import 'package:hello/home__screen1.dart';

Map<String, WidgetBuilder> routes = {
  // HomeScreen.routeName: (BuildContext context) => HomeScreen(),
  // ViewScreen.routeName: (BuildContext context) => ViewScreen(),
  //Output.routeName:(BuildContext context)=>Output(),
  TodoScreen.routeName:(BuildContext context)=>TodoScreen(),
};