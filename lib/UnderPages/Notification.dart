import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils.dart';

class TpoNotifications extends StatefulWidget {
  @override
  _TpoNotificationsState createState() => _TpoNotificationsState();
}

class _TpoNotificationsState extends State<TpoNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Notification",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold),),
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsetsDirectional.only(top: 40,start: 45),
                  child: Text("ADD NOTIFICATION",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,fontFamily: "Montserrat"),),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(start: 105,top: 25),
                  height: 170,
                  child: Image.asset("images/bell.png"),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsetsDirectional.only(top: 50,start: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Container(
                width: getScreenSize(context).width-60,
                height: 60,
                child: Card(
                  child: CupertinoTextField(
                    autocorrect: true,
                    placeholder: "Enter Notification here",
                    enableSuggestions: true,
                    maxLines: 8,
                    style: TextStyle(
                        color: Colors.white
                    ),
                    placeholderStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat",
                    ),
                    padding: EdgeInsetsDirectional.only(start: 20,top: 15),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 80,vertical: 50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Colors.pink,
                child: CupertinoButton(
                  onPressed: (){
                    setState(() {});
                  },
                  color: Colors.pink,
                  child:Container(
                    child: Text("ADD",style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
            ),
          )




        ],
      ),

    );
  }
}

