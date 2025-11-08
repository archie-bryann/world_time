import 'package:flutter/material.dart';
// import 'pages/home.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    // home: const Home(),
    initialRoute: '/home', // setting an initial screen for testing purposes
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation()
    }
  ));
}