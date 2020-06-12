import 'package:flutter/material.dart';
import 'package:silverbell/public/drawermenu.dart';
import 'package:silverbell/public/theme.dart';

import 'package:silverbell/public/appbar.dart';

class Menu extends StatefulWidget {
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text("실버벨을 종료하시겠습니까?"),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("아니오"),
                      onPressed: () => Navigator.of(context).pop(false),
                    ),
                    FlatButton(
                      child: Text("예"),
                      onPressed: () {
                        Navigator.of(context).pop(true);
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ));
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: appBar(0, "", context),
        drawer: DrawerMenu(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "어떤 서비스를 찾고 계세요?",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.0, right: 25.0),
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
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/Search');
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: MediaQuery.of(context).size.height / 5,
                            child: RaisedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/Care');
                              },
                              color: titleColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Text(
                                  "요양원",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              height: MediaQuery.of(context).size.height / 5,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/Hospital');
                                },
                                color: titleColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "요양\n병원",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              height: MediaQuery.of(context).size.height / 5,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/Pcenter');
                                },
                                color: titleColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "주야간\n보호\n센터",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.5,
                              height: MediaQuery.of(context).size.height / 5,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/VisitCare');
                                },
                                color: titleColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "방문\n요양",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 20.0
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.15,
                      height: MediaQuery.of(context).size.height / 8,
                      child: RaisedButton(
                        onPressed: () {},
                        color: titleColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "잘모르겠어요 도움이 필요해요~",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          color: mainColor,
        ),
      ),
    );
  }
}
