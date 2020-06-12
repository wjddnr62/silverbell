import 'package:flutter/material.dart';
import 'package:silverbell/public/theme.dart';

class Setting extends StatefulWidget {
  _Setting createState() => _Setting();
}

class _Setting extends State<Setting> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("설정", style: TextStyle(fontSize: 20, color: Colors.white),),
        backgroundColor: mainColor,
      ),
      body: Container(
        height: MediaQuery.of(context).size.width / 1.2,
        color: Colors.white,
        child: Align(
          alignment: Alignment.center,
          child: Center(
            child: Padding(padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            child: Container(
              width: double.infinity,
              height: 255,
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      height: 50,
                      child: Padding(padding: EdgeInsets.only(top: 15, left: 10, bottom: 15, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("공지사항", style: TextStyle(fontSize: 18),),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),),
                    ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: Padding(padding: EdgeInsets.only(top: 15, left: 10, bottom: 15, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("버전 정보", style: TextStyle(fontSize: 18),),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: Padding(padding: EdgeInsets.only(top: 15, left: 10, bottom: 15, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("문의하기", style: TextStyle(fontSize: 18),),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: Padding(padding: EdgeInsets.only(top: 15, left: 10, bottom: 15, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Push 알림", style: TextStyle(fontSize: 18),),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: Padding(padding: EdgeInsets.only(top: 15, left: 10, bottom: 15, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("자동로그인", style: TextStyle(fontSize: 18),),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),),
                  ),
                ],
              ),
            ),),
          ),
        ),
      ),
      backgroundColor: mainColor,
    );
  }

}