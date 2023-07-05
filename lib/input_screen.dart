import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String data = '';

  bool visible = false;


  @override
  void initState() {

  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('App bar'),),
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
            ElevatedButton(onPressed: (){
              setState(() {
                data = controller.text;
                visible = true;
              });
              print(data);
            }, child:Text('CLICK')),
            SizedBox(height: 10,),
            Visibility(
              visible: visible,
                child: Text('My name is $data')),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.clear();
    controller.dispose();
  }
}
