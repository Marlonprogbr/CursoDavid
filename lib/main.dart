import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _getListagemApi() {
    http
        .get(Uri.https('api.themoviedb.org', '/4/list/1'),
        headers: {
          'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiYTM3MTE1N2FkODk3N2JlZDJkNTZkMTAyYjhhYzE3YiIsInN1YiI6IjY1MTViMDdiYzUwYWQyMDBjOTE5YzQwZSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.inPn31xJtdXlHlQ_m3RiJYg6ZqzQqjqXLb8VU0E4uh8',
        }
        )
        .then((Response value) => print(value.body));
  }

  @override
  void initState() {
    _getListagemApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Curso Daivid")),
      ),
    );
  }
}
