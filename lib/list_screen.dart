import 'package:flutter/material.dart';
import 'package:hello/person.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  List<Person> personList = [
    const Person(name: 'John', age: 13, address: 'Kolhapur'),
    const Person(name: 'Jack', age: 13, address: 'Kolhapur'),
    const Person(name: 'jennie', age: 13, address: 'Kolhapur'),
    const Person(name: 'Jon', age: 13, address: 'Kolhapur'),
    const Person(name: 'jolly', age: 13, address: 'Kolhapur'),
    const Person(name: 'James', age: 13, address: 'Kolhapur'),
    const Person(name: 'Julie', age: 13, address: 'Kolhapur'),
    const Person(name: 'Jain', age: 13, address: 'Kolhapur'),
    const Person(name: 'John', age: 13, address: 'Kolhapur'),
    const Person(name: 'Jack', age: 13, address: 'Kolhapur'),
    const Person(name: 'jennie', age: 13, address: 'Kolhapur'),
    const Person(name: 'Jon', age: 13, address: 'Kolhapur'),
    const Person(name: 'jolly', age: 13, address: 'Kolhapur'),
    const Person(name: 'James', age: 13, address: 'Kolhapur'),
    const Person(name: 'Julie', age: 13, address: 'Kolhapur'),
    const Person(name: 'Jain', age: 13, address: 'Kolhapur'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Person list'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.perm_contact_cal,size: 32,),
            title: Text(personList[index].name,style:TextStyle(fontSize: 22),),
            subtitle: Text(personList[index].address),
            trailing: Text(personList[index].age.toString(),style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          );
        },
        itemCount: personList.length,
      ),
    );
  }
}
