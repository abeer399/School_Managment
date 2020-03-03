import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:aptech_e_project/UnderPages/AddPapers.dart';
import 'package:aptech_e_project/UnderPages/AddStudent.dart';
import 'package:aptech_e_project/UnderPages/Company.dart';
import 'package:aptech_e_project/UnderPages/Notification.dart';
import 'package:aptech_e_project/Utils.dart';
import 'package:aptech_e_project/pages/StudentsForm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TpoModule extends StatefulWidget {
  final FirebaseUser user;
  TpoModule(this.user);

  @override
  _TpoModuleState createState() => _TpoModuleState();
}

class _TpoModuleState extends State<TpoModule> {

  @override
  Widget build(BuildContext context) {
    widget.user;
    return Scaffold(
      appBar: AppBar(
        title: Text("TPO Home",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Montserrat"),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          GestureDetector(
            onTap: (){navigate(context, MainHome());},
            child: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                    padding: EdgeInsetsDirectional.only(top: 25,start: 85),
                    child: Container(
                      child: Text("TPO-PANEL",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Montserrat",fontSize: 34),),

                    )),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 100),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){navigate(context, Company());},
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
                                          padding: EdgeInsetsDirectional.only(start: 5,top: 15),
                                          height: 120,
                                          child: Image.asset("images/company.png"),
                                        ),
                                        Container(
                                            padding: EdgeInsetsDirectional.only(top: 7),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Container(
                                                color: Colors.blue,
                                                width: 120,
                                                height: 30,
                                                child: Container(
                                                  padding: EdgeInsetsDirectional.only(top: 7),
                                                  child: Text("COMPANY",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
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
                        onTap: (){navigate(context, TpoNotifications());},
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
                                          padding: EdgeInsetsDirectional.only(start: 5,top: 15),
                                          height: 120,
                                          child: Image.asset("images/bell.png"),
                                        ),
                                        GestureDetector(
                                          onTap: (){},
                                          child: Container(
                                              padding: EdgeInsetsDirectional.only(top: 7),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(20),
                                                child: Container(
                                                  color: Colors.blue,
                                                  width: 120,
                                                  height: 30,
                                                  child: Container(
                                                    padding: EdgeInsetsDirectional.only(top: 7),
                                                    child: Text("NOTIFICATION",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
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
                Container(
                  padding: EdgeInsetsDirectional.only(top: 300),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){navigate(context, AddPapers());},
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
                                          padding: EdgeInsetsDirectional.only(start: 5,top: 15),
                                          height: 120,
                                          child: Image.asset("images/test.png"),
                                        ),
                                        Container(
                                            padding: EdgeInsetsDirectional.only(top: 7),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Container(
                                                color: Colors.blue,
                                                width: 120,
                                                height: 30,
                                                child: Container(
                                                  padding: EdgeInsetsDirectional.only(top: 7),
                                                  child: Text("PAPER",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
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
                        onTap: (){navigate(context, AddStudent());},
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
                                          padding: EdgeInsetsDirectional.only(start: 5,top: 15),
                                          height: 120,
                                          child: Image.asset("images/student.png"),
                                        ),
                                        GestureDetector(
                                          onTap: (){},
                                          child: Container(
                                              padding: EdgeInsetsDirectional.only(top: 7),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(20),
                                                child: Container(
                                                  color: Colors.blue,
                                                  width: 120,
                                                  height: 30,
                                                  child: Container(
                                                    padding: EdgeInsetsDirectional.only(top: 7),
                                                    child: Text("STUDENT",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
