import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<dynamic, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    if (data.isNotEmpty) {
      data = data;
    } else {
      final arguments = ModalRoute.of(context)?.settings.arguments;

      if (arguments is Map<dynamic, dynamic>) {
        data = arguments;
      } else {
        data = {};
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'America Timezones',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, '/location');
                  if (result != null) {
                    setState(() {
                      data = {
                        'time': result['time'],
                        'location': result['location'],
                        'isDaytime': result['isDaytime'],
                      };
                    });
                  }
                },
                icon: Icon(
                  Icons.edit_location,
                  color: Colors.white,
                ),
                label: Padding(
                  padding: const EdgeInsets.fromLTRB(3.0, 0.0, 3.0, 0.0),
                  child: Text(
                    'Edit Location',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                data['location'] ?? 'Loading...',
                style: TextStyle(
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                data['time'] ?? '',
                style: TextStyle(
                  fontSize: 66.0,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
