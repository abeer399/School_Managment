import 'package:aptech_e_project/Logins/StudentLogin.dart';
import 'package:aptech_e_project/Logins/adminLogin.dart';
import 'package:aptech_e_project/Logins/tpoLogin.dart';
import 'package:aptech_e_project/Utils.dart';
import 'package:aptech_e_project/pages/Splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",style: TextStyle(color: Colors.white,fontFamily: "Montserrat"),),
        centerTitle: true,
        brightness:Brightness.dark,
        leading: GestureDetector(
          onTap: (){navigate(context, Splash());},
          child: Icon(Icons.navigate_before,color: Colors.white,size: 30,),
        ),
      ),
      body: Stack(
        children: <Widget>[

          Container(
              padding: EdgeInsetsDirectional.only(top: 25,start: 130),
              child: Container(
                padding: EdgeInsetsDirectional.only(top: 0),
                child: Text("HOME",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Montserrat",fontSize: 34),),

              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Container(
                padding: EdgeInsetsDirectional.only(top: 70),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){navigate(context, AdminLogin());},
                      child: Container(
                        padding: EdgeInsetsDirectional.only(start: 5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 170,
                              width: 170,
                              color: Colors.grey,
                              child: Card(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsetsDirectional.only(start: 25,top: 20),
                                        height: 120,
                                        child: Image.asset("images/admin.png"),
                                      ),
                                      Container(
                                          padding: EdgeInsetsDirectional.only(top: 7),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Container(
                                              color: Colors.blue,
                                              width: 100,
                                              height: 30,
                                              child: Container(
                                                padding: EdgeInsetsDirectional.only(top: 7),
                                                child: Text("ADMIN",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
                                              ),
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){navigate(context, TpoLogin());},
                      child: Container(
                        padding: EdgeInsetsDirectional.only(end: 5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 170,
                              width: 170,
                              color: Colors.grey,
                              child: Card(
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsetsDirectional.only(start: 5,top: 20),
                                        height: 120,
                                        child: Image.asset("images/team.png"),
                                      ),
                                      GestureDetector(
                                        onTap: (){navigate(context, TpoLogin());},
                                        child: Container(
                                            padding: EdgeInsetsDirectional.only(top: 7),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Container(
                                                color: Colors.blue,
                                                width: 100,
                                                height: 30,
                                                child: Container(
                                                  padding: EdgeInsetsDirectional.only(top: 7),
                                                  child: Text("TPO",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
                                                ),
                                              ),
                                            )
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ),
                      ),
                    )


                  ],
                ),
              ),
              GestureDetector(
                onTap: (){navigate(context, StudentLogin());},
                child: Container(
                  padding: EdgeInsetsDirectional.only(top: 25),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 170,
                        width: 170,
                        color: Colors.grey,
                        child: Card(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsetsDirectional.only(start: 5,top: 20),
                                  height: 120,
                                  child: Image.asset("images/boy.png"),
                                ),
                                Container(
                                    padding: EdgeInsetsDirectional.only(top: 7),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        color: Colors.blue,
                                        width: 100,
                                        height: 30,
                                        child: Container(
                                          padding: EdgeInsetsDirectional.only(top: 7),
                                          child: Text("STUDENTS",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                  ),
                ),
              )
            ],
          ),
        ],
      )

    );
  }
}
