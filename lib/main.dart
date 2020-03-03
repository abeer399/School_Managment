import 'package:aptech_e_project/pages/MyApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  //SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}
