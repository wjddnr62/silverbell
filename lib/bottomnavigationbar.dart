import 'package:flutter/material.dart';
import 'package:silverbell/public/theme.dart';

Widget bottombar(int index) {
  return BottomNavigationBar(
      currentIndex: index,
      backgroundColor: titleColor,
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.face), title: SizedBox.shrink()),
        BottomNavigationBarItem(
            icon: Icon(Icons.home), title: SizedBox.shrink()),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), title: SizedBox.shrink())
      ]);
}