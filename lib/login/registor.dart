import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:silverbell/public/theme.dart';
import 'package:silverbell/public/users.dart';

class Registor extends StatefulWidget {
  _Registor createState() => _Registor();
}

class _Registor extends State<Registor> {
  String numberValue;
  Users addUser = Users();
  final focusEmail = FocusNode();
  final focusPass = FocusNode();
  final focusPassRe = FocusNode();
  final focusName = FocusNode();
  final focusBirthY = FocusNode();
  final focusBirthM = FocusNode();
  final focusBirthD = FocusNode();
  final focusPhoneNumber1 = FocusNode();
  final focusPhoneNumber2 = FocusNode();
  final focusAddress1 = FocusNode();
  final focusAddress2 = FocusNode();
  final focusAddress3 = FocusNode();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController passRe = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController birthY = TextEditingController();
  TextEditingController birthM = TextEditingController();
  TextEditingController birthD = TextEditingController();
  TextEditingController phoneNumber1 = TextEditingController();
  TextEditingController phoneNumber2 = TextEditingController();
  TextEditingController phoneNumber3 = TextEditingController();
  TextEditingController address1 = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController address3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: titleColor,
        centerTitle: true,
        title: Text(
          "회원가입 정보입력",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 50,
        color: Colors.black,
        child: RaisedButton(
          onPressed: () {
            addUser.addUsers({
              'email': this.email.text,
              'pass': this.pass.text,
              'name' : this.name.text,
              'brith' : "${this.birthY.text}${this.birthM.text}${this.birthD.text}",
              'phoneNumber' : "${this.numberValue}${this.phoneNumber1.text}${this.phoneNumber2.text}",
              'address' : "${this.address1.text} ${this.address2.text} ${this.address3.text}"
            }).then((value) {
              if (value == 0) {
                Navigator.of(context).pushReplacementNamed('/Menu');
              }
            }).catchError((error) {
              print("회원가입 에러 : " + error.toString());
            });
          },
          color: Colors.black,
          child: Center(
            child: Text(
              "회원가입",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "기본정보",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "이메일",
                          style: TextStyle(fontSize: 14),
                        ),
                        TextFormField(
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
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "비밀번호",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "비밀번호 입력",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          controller: pass,
                          focusNode: focusPass,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          onFieldSubmitted: (v) {
                            FocusScope.of(context).requestFocus(focusPassRe);
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: Text(
                            "비밀번호 확인",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "비밀번호 재입력",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          obscureText: true,
                          controller: passRe,
                          focusNode: focusPassRe,
                          onFieldSubmitted: (v) {
                            FocusScope.of(context).requestFocus(focusName);
                          },
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "이름",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "이름 입력",
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          controller: name,
                          focusNode: focusName,
                          onFieldSubmitted: (v) {
                            FocusScope.of(context).requestFocus(focusBirthY);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "상세 정보(선택)",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "생년월일",
                          style: TextStyle(fontSize: 14),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 5,
                                height: 30,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2)),
                                  ),
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  maxLength: 4,
                                  textAlign: TextAlign.center,
                                  controller: birthY,
                                  focusNode: focusBirthY,
                                  onFieldSubmitted: (v) {
                                    FocusScope.of(context).requestFocus(focusBirthM);
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 5.0, top: 5.0, right: 5.0),
                              child: Text("년"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 7,
                                height: 30,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2)),
                                  ),
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  maxLength: 2,
                                  textAlign: TextAlign.center,
                                  controller: birthM,
                                  focusNode: focusBirthM,
                                  onFieldSubmitted: (v) {
                                    FocusScope.of(context).requestFocus(focusBirthD);
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 5.0, top: 5.0, right: 5.0),
                              child: Text("월"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 7,
                                height: 30,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 2)),
                                  ),
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  maxLength: 2,
                                  textAlign: TextAlign.center,
                                  controller: birthD,
                                  focusNode: focusBirthD,
                                  onFieldSubmitted: (v) {
                                    FocusScope.of(context).requestFocus(focusPhoneNumber1);
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 5.0, top: 5.0, right: 5.0),
                              child: Text("일"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "연락처",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 5,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: DropdownButton<String>(
                                    items: [
                                      DropdownMenuItem(
                                        value: "1",
                                        child: Text("010"),
                                      ),
                                      DropdownMenuItem(
                                        value: "2",
                                        child: Text("011"),
                                      )
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        numberValue = value;
                                      });
                                    },
                                    value: numberValue,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 5,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      counterText: "",
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    controller: phoneNumber1,
                                    maxLength: 4,
                                    focusNode: focusPhoneNumber1,
                                    onFieldSubmitted: (v) {
                                      FocusScope.of(context).requestFocus(focusPhoneNumber2);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 5,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      counterText: "",
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    maxLength: 4,
                                    controller: phoneNumber2,
                                    focusNode: focusPhoneNumber2,
                                    onFieldSubmitted: (v) {
                                      FocusScope.of(context).requestFocus(focusAddress1);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                          ),
                          child: Text(
                            "주소",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Container(
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "주소 입력",
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              controller: address1,
                              focusNode: focusAddress1,
                              onFieldSubmitted: (v) {
                                FocusScope.of(context).requestFocus(focusAddress2);
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Container(
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "주소 입력",
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              controller: address2,
                              focusNode: focusAddress2,
                              onFieldSubmitted: (v) {
                                FocusScope.of(context).requestFocus(focusAddress3);
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Container(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "주소 입력",
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black))
                              ),
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                              controller: address3,
                              focusNode: focusAddress3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
