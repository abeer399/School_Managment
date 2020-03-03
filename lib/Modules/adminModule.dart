import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:aptech_e_project/Logins/tpoLogin.dart';
import 'package:aptech_e_project/Utils.dart';
import 'package:aptech_e_project/pages/StudentsForm.dart';
import 'package:aptech_e_project/pages/TPO.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminModule extends StatefulWidget {
  final FirebaseUser user;
  AdminModule(this.user);
  @override
  _AdminModuleState createState() => _AdminModuleState();
}
class _AdminModuleState extends State<AdminModule> {
 @override
  Widget build(BuildContext context) {
   widget.user;
    return Scaffold(
      appBar: AppBar(
        title: Text("ADMIN",style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          GestureDetector(
            onTap: (){navigate(context, MainHome());},
            child: Icon(Icons.exit_to_app,size: 30,color: Colors.white,),
          )
        ],

      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                    padding: EdgeInsetsDirectional.only(top: 55,start: 55),
                    child: Container(
                      child: Text("ADMIN-PANEL",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Montserrat",fontSize: 34),),

                    )),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 180),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){navigate(context, TPO());},
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
                                          child: Image.asset("images/team.png"),
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
                                                  child: Text("ADD-TPO",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
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
                        onTap: (){navigate(context, StudentsForm());},
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
                                          child: Image.asset("images/boy.png"),
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
                                                  child: Text("ADD-STUDENT",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
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
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
