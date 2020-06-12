import 'package:flutter/material.dart';
import 'package:silverbell/public/theme.dart';

Widget appBar(int check, String title, BuildContext context) {
  bool Login = false;
  bool Title = false;

  if(check == 1) {
    Login = true;
  }
  if(check == 2) {
    Login = true;
    Title = true;
  }
  return AppBar(
    centerTitle: true,
    backgroundColor: titleColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Title ? Text(title, style: TextStyle(
          fontSize: 20, color: Colors.white
        ),) :
        Image.asset(
          'assets/title.png',
          height: 40,
          fit: BoxFit.contain,
        )
      ],
    ),
    actions: <Widget>[
      Login ? Center(
        child: Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              print("로그인");

            },
            child: Text(
              "로그인",
              style: TextStyle(fontSize: 16, color: Colors.transparent),
            ),
          ),
        ),
      ) :
      Center(
        child: Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/Login');
            },
            child: Text(
              "로그인",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      )
    ],
  );
}