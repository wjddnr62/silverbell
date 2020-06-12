import 'package:flutter/material.dart';
import 'package:silverbell/public/theme.dart';

import 'bloc/usersBloc.dart';

class Detail extends StatefulWidget {
  _Detail createState() => _Detail();
}

class _Detail extends State<Detail> {
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
                number == 0
                    ? Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 20.0, left: 15, right: 15),
                          child: Text("인원 X",
                              style: TextStyle(
                                fontSize: 15,
                              )),
                        ),
                      )
                    : Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: 20.0, left: 15, right: 15),
                          child: Text("인원 40/50",
                              style: TextStyle(
                                fontSize: 15,
                              )),
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
                    child: Text("서비스",
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
                                  "재활치료",
                                  style: TextStyle(fontSize: 12),
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
                                  "물리치료",
                                  style: TextStyle(fontSize: 12),
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
                                  "물리치료",
                                  style: TextStyle(fontSize: 12),
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
                                  "재활치료",
                                  style: TextStyle(fontSize: 12),
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
                      "인력현황",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                  child: Text(
                    "시설장(1), 사회복지사(2), 의사(촉탁)(1), 간호사(3), 조무사(1), 물리치료사(2), 영양사(1), 조리원(2), 위생원(2)",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      "침실현황",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      "2인실(1), 3인실(1), 4인실(9)",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      "주차시설",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      "지하 1, 2, 3층 80대 수용가능\n주차: 30분까지 무료 30분이상부터 주차비",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      "장기요양기관지정일: 2013/12/24",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                  child: Text(
                    "교통편: 서산에서 홍성방향으로 고북에서 사거리 방향으로 들어오신 후 봉생2리 입구에서 좌회전 후 600미터 가량 오신 후 오른편에 오양원 위치(안내표지판 참고)\n※ 고속도로(서해안고속도로 해미IC 이용)",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
                    child: Text(
                      "시설평가등급: C",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "환경 및 안전 수준: 3.5",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "기관운영수준: 3",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "급여제공과정 수준: 4",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "급여제공결과 수준: 0.5",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Text(
                      "권리 및 책임 수준 3.5",
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
