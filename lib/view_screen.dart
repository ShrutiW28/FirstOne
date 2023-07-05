import 'package:flutter/material.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  static String routeName = '/view';

  @override
  Widget build(BuildContext context) {

    final name = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('View'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/shruti.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '9876543219',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

            ],
          ),
          // Container(
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('DESCRIPTION', style: TextStyle(color: Colors.blue),),
              ),
            ],
          ),
          // width: MediaQuery.of(context).size.width,
          // )
          Center(
            child: OutlinedButton(onPressed: (){
        Navigator.pop(context);
      }, child:Text('back')),
          )
        ],

      ),
    );
  }
}
