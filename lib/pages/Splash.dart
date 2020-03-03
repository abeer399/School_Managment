import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  "images/361.jpg",
                  height: getScreenSize(context).height,
                  width: getScreenSize(context).width,
                ),
                Container(
                    padding: EdgeInsetsDirectional.only(top: 70, start: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          color: Color(0xFFd52e74),
                          height: 40,
                          width: getScreenSize(context).width - 60,
                          child: Container(
                            padding:
                            EdgeInsetsDirectional.only(top: 7, start: 30),
                            child: Text(
                              "Student Placement System",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    )),
                GestureDetector(
                  onTap: (){navigate(context, MainHome());},
                  child: Container(
                      padding: EdgeInsetsDirectional.only(top: 500, start: 90),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                            color: Color(0xFFd52e74),
                            height: 45,
                            width: getScreenSize(context).width - 185,
                            child: Container(
                              padding:
                              EdgeInsetsDirectional.only(top: 10, start: 60),
                              child: Text(
                                "NEXT",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                      )),
                )
              ],
            ),
          ],
        ));
  }
}
