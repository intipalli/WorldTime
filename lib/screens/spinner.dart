import 'package:flutter/material.dart';
import 'package:world_time/services/america_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinner extends StatefulWidget {
  @override
  _SpinnerState createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {

  void setupWorldTime() async {
    AmericaTime instance = AmericaTime(location: 'New York', url: 'America/New_York');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'time': instance.time,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Center(
            child: SpinKitRing(
              color: Colors.white,
              size: 50.0,
            )
        )
    );
  }
}
