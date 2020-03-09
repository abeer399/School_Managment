import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:aptech_e_project/StudentView/CompanyDetails.dart';
import 'package:aptech_e_project/Utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StudentModule extends StatefulWidget {
  final FirebaseUser user;
  StudentModule(this.user);


  @override
  _StudentModuleState createState() => _StudentModuleState();
}

class _StudentModuleState extends State<StudentModule> {
 @override
  Widget build(BuildContext context) {
   widget.user;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Student Panel",style: TextStyle(fontFamily: "Montserrat"),),
        actions: <Widget>[
          GestureDetector(
            onTap: (){navigate(context, MainHome());},
            child: Icon(Icons.exit_to_app,color: Colors.white,size: 30,),
          )
        ],
        centerTitle: true,
      ),

      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsetsDirectional.only(top: 20,start: 20),
                  child: Text("STUDENT PANEL",style: TextStyle(fontFamily: "Montserrat",fontSize: 28,fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 50),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){navigate(context, CompanyDetails());},
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
                  padding: EdgeInsetsDirectional.only(top: 20,start: 90),
                  child: GestureDetector(
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
                                              child: Text("TEST PAPERS",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
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
                )
              ],
            ),
          )


        ],
      ),
    );
  }
}
