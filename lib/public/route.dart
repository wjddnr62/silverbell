import 'package:flutter/material.dart';
import 'package:silverbell/login/registor.dart';

import 'package:silverbell/login/agreepage.dart';
import 'package:silverbell/public/settings.dart';
import '../Pcenter.dart';
import '../care.dart';
import '../detail.dart';
import '../detail2.dart';
import '../hospital.dart';

import 'package:silverbell/login/login.dart';
import 'package:silverbell/main/menu.dart';

import '../search.dart';
import '../visitcare.dart';

final routes = {
  '/Menu' : (BuildContext context) => Menu(),
  '/Care' : (BuildContext context) => Care(),
  '/Hospital' : (BuildContext context) => Hospital(),
  '/Login' : (BuildContext context) => Login(),
  '/Agree' : (BuildContext context) => Agree(),
  '/Registor' : (BuildContext context) => Registor(),
  '/Search' : (BuildContext context) => Search(),
  '/Setting' : (BuildContext context) => Setting(),
  '/Pcenter' : (BuildContext context) => Pcenter(),
  '/VisitCare' : (BuildContext context) => VisitCare(),
  '/Detail' : (BuildContext context) => Detail(),
  '/Detail2' : (BuildContext context) => Detail2(),
};