import 'package:flutter/material.dart';
import 'package:silverbell/public/theme.dart';

class DrawerMenu extends StatefulWidget {
  _Drawer createState() => _Drawer();
}

class _Drawer extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: SafeArea(child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30, top: 30),
                child: GestureDetector(
                  child: Icon(Icons.settings),
                  onTap: () {
                    Navigator.of(context).pushNamed('/Setting');
                  },
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
