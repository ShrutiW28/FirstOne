import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  Test({super.key});

  final List<String> names = [
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2',
    'n3',
    'n1',
    'n2'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Page'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: Icon(Icons.add),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                print('1');
              },
            ),
          ),
        ],
      ),
      // body: ListView.builder(itemBuilder: (BuildContext context, int index) {
      //   return Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Text(names[index]),
      //   );
      // }, itemCount: names.length,)

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(width: 200, height: 300, color: Colors.blue,),
      //       Text('Heading'),
      //       Container(width: 200, height: 300,color: Colors.red,),
      //       Container(width: 200, height: 300,color: Colors.teal,),
      //       Container(width: 200, height: 300,color: Colors.yellow,),
      //       Container(width: 200, height: 300,color: Colors.deepOrange,),
      //       // for(final name in names)
      //       // Padding(
      //       //     padding: const EdgeInsets.all(16.0),
      //       //     child: Text(name),
      //       //   ),
      //     ],
      //   ),
      // ),

      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 32.0),
      //         child: Icon(Icons.access_time),
      //       ),
      //       Text('Some text ajsdfiusbfsdb isbfdisbfiudbfsdiubfsidu dbfsiubdfiusdbf sdfbsufbsdibfiusdbfusdbfisdbfsdbfsdudsfbsidufbsd sfsibfsif',),
      //     ],
      //   ),
      // ),
      // body: Text('Some text ajsdfiusbfsdb isbfdisbfiudbfsdiubfsidu dbfsiubdfiusdbf sdfbsufbsdibfiusdbfusdbfisdbfsdbfsdudsfbsidufbsd sfsibfsif',),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(width: MediaQuery.of(context).size.width /2, height: 200,color: Colors.teal,),
            //     Container(width:MediaQuery.of(context).size.width /2, height: 200,color: Colors.yellow,),
            //   ],
            // ),
            // Container(width: MediaQuery.of(context).size.width, height: 120,color: Colors.red,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(width: MediaQuery.of(context).size.width * 0.25, height: 200,color: Colors.pink,),
            //     Container(width:MediaQuery.of(context).size.width * 0.25, height: 200,color: Colors.blue,),
            //     Container(width:MediaQuery.of(context).size.width * 0.5, height: 200,color: Colors.purple,),
            //     // Container(width:MediaQuery.of(context).size.width /3, height: 200,color: Colors.tealAccent,),
            //   ],
            // ),

            GestureDetector(
              onTap: () {
                print('clicked');
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Icon(Icons.add, size: 64,color: Colors.white,),
              ),
            ),
            Text('Hello', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            GestureDetector(onTap: () {
              print('clicked text!');
            },
                child: Text('World', style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 43))),
            // Image.asset('images/flutter.png', width: 200, height: 200,),
            Image.network('https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png', width: 240, height: 240,),
            TextButton(onPressed: (){}, child: Text('Click')),
            ElevatedButton(onPressed: (){}, child: Text('Click')),
            OutlinedButton(onPressed: (){}, child: Text('Click')),
          ],
        ),
      ),
    );
  }
}
