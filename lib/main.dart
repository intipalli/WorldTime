import 'package:flutter/material.dart';
import 'package:world_time/screens/home_screen.dart';
import 'package:world_time/screens/spinner.dart';
import 'package:world_time/screens/choose_location_screen.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Spinner(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocationScreen(),
    }
));
