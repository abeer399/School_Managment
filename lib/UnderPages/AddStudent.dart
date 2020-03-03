import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils.dart';

class AddStudent extends StatefulWidget {
  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  TextEditingController fnameCtrl = TextEditingController();
  TextEditingController namelCtrl = TextEditingController();
  TextEditingController AgeCtrl = TextEditingController();
  TextEditingController ClassCtrl = TextEditingController();

  saveData(){
    final DatabaseReference database = FirebaseDatabase.instance.reference().child("student");
    String id = fnameCtrl.text;
    String name = namelCtrl.text;
    String Age = AgeCtrl.text;
    String Fname = fnameCtrl.text;
    String Class= ClassCtrl.text;
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: name, password: Fname).then((value){
      database.child(value.user.uid).set({
        "id":value.user.uid,
        "name":name,
        "fname":Fname,
        "Age":Age,
        "Class":ClassCtrl
      });
      // FirebaseAuth.instance.signInWithEmailAndPassword(email: "admin@gmail.com", password: "admin123");
    });



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 20,
        centerTitle: true,
        title: Text("Student Form",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: "Montserrat"),),
        actions: <Widget>[
          GestureDetector(
            onTap: (){navigate(context, MainHome());},
            child: Icon(Icons.exit_to_app),
          )
        ],
      ),

      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsetsDirectional.only(start: 20,top: 30),
                child: Container(
                  child: Text("STUDENT FORM",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold,fontFamily: "Montserrat"),),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 20,start: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: getScreenSize(context).width-60,
                    height: 60,
                    child: Card(
                      child: CupertinoTextField(
                        placeholder: "Enter Student Name",
                        controller: namelCtrl,
                        enableSuggestions: true,
                        style: TextStyle(
                            color: Colors.white
                        ),
                        placeholderStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                        ),
                        padding: EdgeInsetsDirectional.only(start: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 30,start: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: getScreenSize(context).width-60,
                    height: 60,
                    child: Card(
                      child: CupertinoTextField(
                        controller: fnameCtrl,
                        autocorrect: true,
                        placeholder: "Enter Father Name",
                        enableSuggestions: true,
                        style: TextStyle(
                            color: Colors.white
                        ),
                        placeholderStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                        ),
                        padding: EdgeInsetsDirectional.only(start: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 20,start: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: getScreenSize(context).width-60,
                    height: 60,
                    child: Card(
                      child: CupertinoTextField(
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        controller: AgeCtrl,
                        placeholder: "Enter Student Age",
                        enableSuggestions: true,
                        style: TextStyle(
                            color: Colors.white
                        ),
                        placeholderStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                        ),
                        padding: EdgeInsetsDirectional.only(start: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 20,start: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: getScreenSize(context).width-60,
                    height: 60,
                    child: Card(
                      child: CupertinoTextField(
                        controller: ClassCtrl,
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        placeholder: "Enter Student Class",
                        enableSuggestions: true,
                        style: TextStyle(
                            color: Colors.white
                        ),
                        placeholderStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                        ),
                        padding: EdgeInsetsDirectional.only(start: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 20,start: 97),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: Colors.pink,
                    child: CupertinoButton(
                      onPressed: (){
                        setState(() {
                          saveData();
                        });
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
          )
        ],
      ),
    );
  }
}
