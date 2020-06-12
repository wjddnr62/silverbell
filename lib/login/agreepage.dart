import 'package:flutter/material.dart';
import 'package:silverbell/public/theme.dart';

class Agree extends StatefulWidget {
  _Agree createState() => _Agree();
}

class _Agree extends State<Agree> {
  bool allCheck = false;
  bool numberOne = false;
  bool numberTwo = false;
  bool numberThree = false;
  bool numberFour = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 50,
          color: Colors.black,
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/Registor');
            },
            color: Colors.black,
            child: Center(
              child: Text(
                "확인",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Center(
                      child: Image.asset(
                        "assets/title.png",
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      "실버벨 서비스 이용을 위해\n약관에 동의해 주세요.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                child: allCheck
                                    ? Icon(Icons.check_circle)
                                    : Icon(Icons.check_circle_outline),
                                onTap: () {
                                  setState(() {
                                    if (allCheck == false) {
                                      allCheck = true;
                                      numberOne = true;
                                      numberTwo = true;
                                      numberThree = true;
                                      numberFour = true;
                                    } else if (allCheck == true) {
                                      allCheck = false;
                                      numberOne = false;
                                      numberTwo = false;
                                      numberThree = false;
                                      numberFour = false;
                                    }
                                  });
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("아래의 내용에 모두 동의합니다."),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 3.8,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: Colors.white),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10, left: 10),
                                    child: Row(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: allCheck
                                              ? Icon(Icons.check_circle)
                                              : numberOne
                                                  ? Icon(Icons.check_circle)
                                                  : Icon(Icons
                                                      .check_circle_outline),
                                          onTap: () {
                                            setState(() {
                                              if (allCheck == true) {
                                                allCheck = false;
                                                numberOne = false;
                                                numberTwo = true;
                                                numberThree = true;
                                                numberFour = true;
                                              } else {
                                                if (numberOne == false) {
                                                  numberOne = true;
                                                  if (numberTwo == true &&
                                                      numberThree == true &&
                                                      numberFour == true) {
                                                    allCheck = true;
                                                  }
                                                } else if (numberOne == true) {
                                                  numberOne = false;
                                                }
                                              }
                                            });
                                          },
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            "서비스 이용약관 동의(필수) ",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Text(
                                                  "자세히보기`",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10),
//                                              textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Container(
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10, left: 10),
                                    child: Row(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: allCheck
                                              ? Icon(Icons.check_circle)
                                              : numberTwo
                                                  ? Icon(Icons.check_circle)
                                                  : Icon(Icons
                                                      .check_circle_outline),
                                          onTap: () {
                                            setState(() {
                                              if (allCheck == true) {
                                                allCheck = false;
                                                numberTwo = false;
                                                numberOne = true;
                                                numberThree = true;
                                                numberFour = true;
                                              } else {
                                                if (numberTwo == false) {
                                                  numberTwo = true;
                                                  if (numberOne == true &&
                                                      numberThree == true &&
                                                      numberFour == true) {
                                                    allCheck = true;
                                                  }
                                                } else if (numberTwo == true) {
                                                  numberTwo = false;
                                                }
                                              }
                                            });
                                          },
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            "개인정보 수집 및 이용동의(필수) ",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Text(
                                                  "자세히보기`",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10),
//                                              textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Container(
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10, left: 10),
                                    child: Row(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: allCheck
                                              ? Icon(Icons.check_circle)
                                              : numberThree
                                                  ? Icon(Icons.check_circle)
                                                  : Icon(Icons
                                                      .check_circle_outline),
                                          onTap: () {
                                            setState(() {
                                              if (allCheck == true) {
                                                allCheck = false;
                                                numberThree = false;
                                                numberOne = true;
                                                numberTwo = true;
                                                numberFour = true;
                                              } else {
                                                if (numberThree == false) {
                                                  numberThree = true;
                                                  if (numberOne == true &&
                                                      numberTwo == true &&
                                                      numberFour == true) {
                                                    allCheck = true;
                                                  }
                                                } else if (numberThree ==
                                                    true) {
                                                  numberThree = false;
                                                }
                                              }
                                            });
                                          },
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            "개인정보 제3자 제공 ",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Text(
                                                  "자세히보기`",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10),
//                                              textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Container(
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10, left: 10),
                                    child: Row(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: allCheck
                                              ? Icon(Icons.check_circle)
                                              : numberFour
                                                  ? Icon(Icons.check_circle)
                                                  : Icon(Icons
                                                      .check_circle_outline),
                                          onTap: () {
                                            setState(() {
                                              if (allCheck == true) {
                                                allCheck = false;
                                                numberFour = false;
                                                numberOne = true;
                                                numberTwo = true;
                                                numberThree = true;
                                              } else {
                                                if (numberFour == false) {
                                                  numberFour = true;
                                                  if (numberOne == true &&
                                                      numberTwo == true &&
                                                      numberThree == true) {
                                                    allCheck = true;
                                                  }
                                                } else if (numberFour == true) {
                                                  numberFour = false;
                                                }
                                              }
                                            });
                                          },
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            "마케팅 정보 수집 ",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.0),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Text(
                                                  "자세히보기`",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10),
//                                              textAlign: TextAlign.right,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
