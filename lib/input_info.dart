import 'package:flutter/material.dart';
import 'package:hello/output.dart';

import 'file.dart';
class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  String data = '';
  String value = '';
    String num ='';
  bool visible = false;

  Person person = Person();
  @override
  void initState() {

  }


  TextEditingController controller = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController numController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Personal Details'),),
        body: Center(
          child: Column(
            children: [
              SizedBox(
          width: MediaQuery.of(context).size.width*0.6,
          height: 30,
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Enter your name'
            ),
            controller: controller,
              ),
        ),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.6,
            height:30,
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  hintText: 'Enter your age'
              ),
              controller: ageController,
            ),
          ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.6,
                height: 30,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      hintText: 'Enter your Number'
                  ),
                  controller: numController,
                ),
              ),
          ElevatedButton(onPressed: (){
            setState(() {
              // person=Person(name: controller.text, age: int.parse(ageController.text), number: int.parse(numController.text));

              person.name = controller.text;
              person.age = int.parse(ageController.text);
              person.number = int.parse(numController.text);
              visible = true;
            });
            print(data);
          },
          child:Text('CLICK')),
          SizedBox(height: 10,),
           Visibility(
              visible: visible,
              child: Column(
                children:[
              Text('My name is ${person.name}'),
              Text('My age is ${person.age}'),
            Text('My number is ${person.number}'),

               OutlinedButton(onPressed: (){
                 Navigator.pushNamed(context, Output.routeName,arguments: person);
               }, child: Text('Next')) ,
                ],
              ),
          ),
     ],
    ),
    ),
        );
  }

  @override
  void dispose() {

  }
}

