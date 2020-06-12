import 'package:flutter/material.dart';
import 'package:silverbell/public/drawermenu.dart';
import 'package:silverbell/public/dummydata.dart';
import 'package:silverbell/public/theme.dart';

import 'package:silverbell/public/appbar.dart';

import 'bloc/usersBloc.dart';
import 'detail.dart';

class Pcenter extends StatefulWidget {
  _Pcenter createState() => _Pcenter();
}

class _Pcenter extends State<Pcenter> {
  List<DummyData> dummyData = List();
  AppBar bar;
  UsersBloc _bloc = UsersBloc();

  @override
  void initState() {
    super.initState();

    dummyData.add(DummyData("주야간보호1", "경기도 수원시 장안구 하광교동 428", "031-232-2222", 0,
        1, 1, 1, "assets/pic1.png"));
    dummyData.add(DummyData("주야간보호2", "경기도 수원시 장안구 하광교동 428", "031-232-2222", 40,
        0, 1, 1, "assets/pic2.png"));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: bar = appBar(2, "주야간보호센터", context),
      drawer: DrawerMenu(),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: bar.preferredSize.height,
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

//                            Expanded(
//                              child: Padding(
//                                padding: EdgeInsets.only(left: 5, right: 5),
//                                child: Container(
//                                  height: 50,
//                                  child: TextField(
//                                    decoration: InputDecoration(
//                                      fillColor: Colors.white,
//                                      filled: true,
//                                    ),
//                                    keyboardType: TextInputType.text,
//                                    textInputAction: TextInputAction.done,
//                                  ),
//                                ),
//                              ),
//                            )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  child: Image.asset(
                    'assets/geo.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: Container(
                              child: ListView.separated(
                                  separatorBuilder: (context, index) => Divider(
                                    color: Colors.black,
                                  ),
                                  itemCount: dummyData.length,
                                  itemBuilder: (context, position) {
                                    return GestureDetector(
                                      onTap: () {
                                        print("touch${position.toString()}");
                                        _bloc.number = position;
                                        _bloc.pageNum = 2;
                                        Navigator.of(context).pushNamed('/Detail');
                                      },
                                      child: Container(
                                        height:
                                        MediaQuery.of(context).size.height /
                                            4.5,
                                        child: Row(
                                          children: <Widget>[
                                            Flexible(
                                              flex: 1,
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 10,
                                                      left: 10,
                                                      right: 10,
                                                      bottom: 10),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      dummyData[position]
                                                          .dementia ==
                                                          1
                                                          ? Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                        children: <Widget>[
                                                          Align(
                                                            alignment:
                                                            Alignment
                                                                .topLeft,
                                                            child: Text(
                                                              dummyData[
                                                              position]
                                                                  .title,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  15,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child:
                                                            Container(
                                                              width: 80,
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                  BorderRadius.all(Radius.circular(
                                                                      10)),
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .black),
                                                                  color:
                                                                  mainColor),
                                                              child: Center(
                                                                child: Text(
                                                                  "치매전문", style: TextStyle(fontSize: 12),),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                          : Align(
                                                        alignment: Alignment
                                                            .topLeft,
                                                        child: Text(
                                                          dummyData[
                                                          position]
                                                              .title,
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                              FontWeight
                                                                  .bold),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsets.only(
                                                          top: 5,),
                                                        child: Text(
                                                          dummyData[position]
                                                              .address,
                                                          style: TextStyle(
                                                              fontSize: 12),
                                                        ),
                                                      ),

                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.only(
                                                              top: 5),
                                                          child: Align(
                                                            alignment:
                                                            Alignment.topLeft,
                                                            child: Text(
                                                              dummyData[position]
                                                                  .callNumber,
                                                              style: TextStyle(
                                                                  fontSize: 12),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: dummyData[position]
                                                            .personnel ==
                                                            0
                                                            ? Align(
                                                          alignment:
                                                          Alignment
                                                              .topLeft,
                                                          child: Text(
                                                            "인원 X",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12),
                                                          ),
                                                        )
                                                            : Align(
                                                          alignment:
                                                          Alignment
                                                              .topLeft,
                                                          child: Text(
                                                            "인원 ${dummyData[position].personnel}/50",
                                                            style: TextStyle(
                                                                fontSize:
                                                                12),
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                              EdgeInsets.only(
                                                                  right: 5),
                                                              child: Container(
                                                                width: 80,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                    BorderRadius.all(
                                                                        Radius.circular(
                                                                            10)),
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .black),
                                                                    color:
                                                                    mainColor),
                                                                child: Center(
                                                                  child: Text(
                                                                    "재활치료", style: TextStyle(fontSize: 12),),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                              EdgeInsets.only(
                                                                  left: 5),
                                                              child: Container(
                                                                width: 80,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                    BorderRadius.all(
                                                                        Radius.circular(
                                                                            10)),
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .black),
                                                                    color:
                                                                    mainColor),
                                                                child: Center(
                                                                  child: Text(
                                                                    "물리치료", style: TextStyle(fontSize: 12),),
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: double.infinity,
                                              width: 1,
                                              color: Colors.black,
                                            ),
                                            Flexible(
                                              flex: 1,
                                              child: Image.asset(
                                                dummyData[position].img,
                                                fit: BoxFit.fill,
                                                width: double.infinity,
                                                height: double.infinity,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}