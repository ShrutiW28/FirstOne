import 'package:flutter/material.dart';
import 'package:hello/view_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    String name = 'Shruti Waychal';
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('images/shruti.jpeg'), fit: BoxFit.fill),
              ),
            ),
            Text(name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 100),
            Text('Details'),
            GestureDetector(
                onTap: () {
                  print('clicked text');
                },
                child: OutlinedButton(
                  child: Text('Next'),
                  onPressed: () {
                    Navigator.pushNamed(context, ViewScreen.routeName, arguments: name);
                  },
                )

                // Container(
                //    width:200,
                //     height:200,
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //         Image.asset('images/shruti.jpeg',width:200,height:200),

                // ],
                ),
          ],
        ),
      ),
    );
  }
}
