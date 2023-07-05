import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hello/album.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final result = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/2'));
  Album album = Album.fromMap(jsonDecode(result.body));
  return album;
}

class HttpScreen extends StatefulWidget {
  const HttpScreen({super.key});

  @override
  State<HttpScreen> createState() => _HttpScreenState();
}

class _HttpScreenState extends State<HttpScreen> {

  late Future<Album> album;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Future example')),
      body: FutureBuilder<Album>(
      future: album,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // return Text(snapshot.data!.albumName);
          return ListTile(
            leading: Text(snapshot.data!.id.toString()),
            title:Text(snapshot.data!.albumName) ,
            trailing: Text(snapshot.data!.albumId.toString()),
            subtitle: Text(snapshot.data!.name),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        // By default, show a loading spinner.
        return Center(child: const CircularProgressIndicator());
      },
    ),
    );
  }

  @override
  void initState() {
    super.initState();
    album = fetchAlbum();
  }
}
