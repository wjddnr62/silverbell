import 'package:flutter/material.dart';
import 'package:silverbell/bloc/usersBloc.dart';
import 'package:silverbell/public/theme.dart';
import 'package:silverbell/public/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kakao_flutter_sdk/auth.dart';
import 'package:kakao_flutter_sdk/common.dart';


class Login extends StatefulWidget {
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  Users loginUser = Users();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  FocusNode focusEmail = FocusNode();
  FocusNode focusPass = FocusNode();
  final _userBloc = UsersBloc();

  login(String email, String pass) async {
    var value = await loginUser.loginUser(email, pass).then((value) {
      print("value:"+ value.toString());
      if(value == 0) {
        print("value 0");
      } else if (value == 1) {
        print("value 1");
      }
    });
  }


  @override
  void initState() {
    super.initState();
    KakaoContext.clientId = "${"93788257ec6896b1aafb29a6d2ba133d"}";

    AccessTokenStore.instance.clear();
    _initKakaoTalkInstalled();
  }

  _initKakaoTalkInstalled() async {
    final installed = await isKakaoTalkInstalled();
    setState(() {
      _isKakaoTalkInstalled = installed;
    });
  }

  _issueAccessToken(String authCode) async {
    try {
      var token = await AuthApi.instance.issueAccessToken(authCode);
      AccessTokenStore.instance.toStore(token);
      print("token : ${token.toString()}");
      Navigator.of(context).pushNamedAndRemoveUntil(
          '/Menu', (Route<dynamic> route) => false);
    } catch (e) {
      print("error on issuing access token: $e");
    }
  }

  bool _isKakaoTalkInstalled = true;

  _loginWithKakao() async {
    try {
      var code = await AuthCodeClient.instance.request();
      await _issueAccessToken(code);
    } catch (e) {
      print(e);
    }
  }

  _loginWithTalk() async {
    try {
      var code = await AuthCodeClient.instance.requestWithTalk();
      await _issueAccessToken(code);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          backgroundColor: mainColor,
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Column(
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
                      padding:
                      EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 2)),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0, right: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "이메일 입력",
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                  focusNode: focusEmail,
                                  controller: email,
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  onFieldSubmitted: (v) {
                                    FocusScope.of(context).requestFocus(focusPass);
                                  },
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "비밀번호 입력",
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                  controller: pass,
                                  obscureText: true,
                                  focusNode: focusPass,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                      child: Container(
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {
                            _userBloc.getUser(email.text, pass.text).then((value) {
                              print("value : " + value.toString());
                              if (value == 1) {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/Menu', (Route<dynamic> route) => false);
                              } else {

                              }
                            });
                          },
                          color: Colors.black,
                          child: Center(
                            child: Text(
                              "로그인",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
                      child: Container(
                        height: 50,
                        child: RaisedButton(
                          onPressed: () {

                            if (_isKakaoTalkInstalled) {
                              _loginWithTalk();
                            } else {
                              print("not kakao init");
                            }
//                            _loginWithKakao();
                          },
                          color: Color.fromARGB(255, 251, 227, 1),
                          child: Center(
                            child: Text(
                              "카카오톡 로그인",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                      child: Container(
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "실버벨에 처음오셨나요? ",
                              style: TextStyle(fontSize: 18),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/Agree');
                              },
                              child: Text(
                                "회원가입",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
//                  Padding(
//                    padding:
//                        EdgeInsets.only(top: 50.0, right: 30.0, left: 30.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children: <Widget>[
//                        Flexible(
//                          flex: 1,
//                          child: Image.asset(
//                            "assets/google.png",
//                            width: MediaQuery.of(context).size.width / 6,
//                            height: MediaQuery.of(context).size.width / 6,
//                          ),
//                        ),
//                        Flexible(
//                          flex: 1,
//                          child: Image.asset(
//                            "assets/naver.png",
//                            width: MediaQuery.of(context).size.width / 6,
//                            height: MediaQuery.of(context).size.width / 6,
//                          ),
//                        ),
//                        Flexible(
//                          flex: 1,
//                          child: Image.asset(
//                            "assets/facebook.png",
//                            width: MediaQuery.of(context).size.width / 6,
//                            height: MediaQuery.of(context).size.width / 6,
//                          ),
//                        ),
//                        Flexible(
//                          flex: 1,
//                          child: Image.asset(
//                            "assets/kakao.png",
//                            width: MediaQuery.of(context).size.width / 6,
//                            height: MediaQuery.of(context).size.width / 6,
//                          ),
//                        )
//                      ],
//                    ),
//                  )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
