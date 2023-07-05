import 'package:flutter/material.dart';
import 'package:hello/file.dart';
class Output extends StatelessWidget {
  const Output({super.key});

  static String routeName='/output';


  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.arguments as Person;
    return Scaffold(
      appBar: AppBar(title: Text('App Bar'),),
      body: Column(
        children: [
          Text(name.name!),
          SizedBox(height: 30,),
          Text(name.age.toString()),
          SizedBox(height: 30,),
          Text(name.number.toString()),
        ],
      ),
    );
  }
}
