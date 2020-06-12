import 'package:flutter/material.dart';
import 'package:silverbell/public/theme.dart';

import 'bloc/usersBloc.dart';

class Detail2 extends StatefulWidget {
  _Detail2 createState() => _Detail2();
}

class _Detail2 extends State<Detail2> {
  final UsersBloc _bloc = UsersBloc();
  var number, pageNum, pageName;

  @override
  void initState() {
    super.initState();
    number = _bloc.number;
    pageNum = _bloc.pageNum;
    if (pageNum == 0) {
      pageName = "요양원";
    } else if (pageNum == 1) {
      pageName = "요양병원";
    } else if (pageNum == 2) {
      pageName = "주야간보호";
    } else if (pageNum == 3) {
      pageName = "방문요양";
    }
    print("num : ${number}");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("number : ${number}");
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                number == 0
                    ? Padding(
                        padding: EdgeInsets.all(15),
                        child: Image.asset(
                          "assets/pic1.png",
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          fit: BoxFit.fill,
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.all(15),
                        child: Image.asset(
                          "assets/pic2.png",
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          fit: BoxFit.fill,
                        ),
                      ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                  child: Row(
                    children: <Widget>[
                      number == 0
                          ? Text("${pageName}1",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold))
                          : Text("${pageName}2",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 80,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.black),
                              color: mainColor),
                          child: Center(
                            child: Text(
                              "치매전문",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                  child: Row(
                    children: <Widget>[
                      Text("경기도 수원시 장안구 하광교동 428",
                          style: TextStyle(
                            fontSize: 15,
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 80,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.black),
                              color: mainColor),
                          child: Center(
                            child: Text(
                              "위치보기",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                  child: Row(
                    children: <Widget>[
                      Text("031-232-2222",
                          style: TextStyle(
                            fontSize: 15,
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Container(
                          width: 80,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.black),
                              color: mainColor),
                          child: Center(
                            child: Text(
                              "전화걸기",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text("기관일련번호:",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text("진료과목",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Container(
                              width: 80,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black),
                                  color: mainColor),
                              child: Center(
                                child: Text(
                                  "외과",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Container(
                              width: 80,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black),
                                  color: mainColor),
                              child: Center(
                                child: Text(
                                  "재활의학과",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Container(
                              width: 80,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black),
                                  color: mainColor),
                              child: Center(
                                child: Text(
                                  "가정의학과",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: Container(
                              width: 80,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  border: Border.all(color: Colors.black),
                                  color: mainColor),
                              child: Center(
                                child: Text(
                                  "한병재활의학과",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      "병상수: 110개\n의료인수: 12명\n입원실수: 44개",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
