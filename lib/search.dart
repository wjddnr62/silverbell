import 'package:flutter/material.dart';
import 'package:silverbell/public/drawermenu.dart';
import 'package:silverbell/public/theme.dart';
import 'package:silverbell/public/appbar.dart';

class Search extends StatefulWidget {
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: appBar(1, "", context),
      drawer: DrawerMenu(),
      body: Container(
        height: double.infinity,
        child: Align(
            alignment: Alignment.center,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "서비스를 원하는 지역을 \n검색해주세요.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.search,
                              size: 50,
                            ),
                            Container(
                              width: 1,
                              height: double.infinity,
                              color: Colors.black,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 5, right: 5),
                                child: Container(
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.done,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        color: mainColor,
      ),
    );
  }
}
