import 'package:flutter/material.dart';
import 'package:hello/todo_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController controller = TextEditingController();
  TextEditingController numController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
            child: Column(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height*0.3,
                width: 120,
                  child:
             Container(
               width: 200,
               height: 200,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 image: DecorationImage(
                   image: NetworkImage('https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png'),
                   // https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png
                   fit: BoxFit.fill,
                 ),
                 ),
               ),
             ),
                SizedBox(
                  width:MediaQuery.of(context).size.width*0.6,
                height: 48,
               child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: ('Enter your name'),
                  ),
                  controller: controller,
                ),
                ),
             SizedBox(height: 10,),
             SizedBox(
               width: MediaQuery.of(context).size.width*0.6,
               height: 48,
               child: TextField(
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: ('Enter OTP'),
                 ),
                 controller: numController,
               ),
             ),
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: OutlinedButton(onPressed: (){
                    Navigator.pushNamed(context,TodoScreen.routeName);
                  }, child: Text('LOG IN')),
                ),
              ],
            ),

          ),
    );
  }
}
