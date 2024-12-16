import 'package:flutter/material.dart';
import 'dart:async';
void main() {
  runApp( Splash_Screen_25_demo());
}

class Splash_Screen_25_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer to simulate a loading process
    Timer(Duration(seconds: 10), () {
      // After 3 seconds, navigate to the home page
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Your logo or splash image here
            FlutterLogo(size: 100),

            //offline
            // Image.asset('assets/backimage.png'),


            //online
            Image.network(
                'https://picsum.photos/250?image=9',

                height: 400,
                width: 250
            ),

            SizedBox(height: 20),
            Text(
              'Welcome to MyApp',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text(
          'This is the main content of the app.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
