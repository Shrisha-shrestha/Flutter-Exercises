import 'package:flutter/material.dart';
import 'pages/choose_location.dart';
import 'pages/home.dart';
import 'pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
routes: {
  '/loading': (context) => Loading(),
  '/location': (context) => chooselocation(),
  '/home':(context) => Home(),
}
));
