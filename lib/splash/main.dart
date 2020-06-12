import 'dart:async';

import 'package:flutter/material.dart';
import 'package:silverbell/public/route.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
    routes: routes,
  ));
}

class Splash extends StatefulWidget {

  _Splash createState() => _Splash();
}

class _Splash extends State<Splash> {
  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/Menu');
  }


  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Image.asset(
            "assets/splash.png"
        ),
      ),
    );
  }


}
