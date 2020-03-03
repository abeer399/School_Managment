import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils.dart';

class StudentsForm extends StatefulWidget {
  @override
  _StudentsFormState createState() => _StudentsFormState();
}

class _StudentsFormState extends State<StudentsForm> {
  TextEditingController idCtrl = TextEditingController();
  TextEditingController namelCtrl = TextEditingController();
  TextEditingController branchCtrl = TextEditingController();
  TextEditingController percentCtrl = TextEditingController();

  saveData(){
    final DatabaseReference database = FirebaseDatabase.instance.reference().child("student");
    String id = idCtrl.text;
    String name = namelCtrl.text;
    String branch = branchCtrl.text;
    String percentage = percentCtrl.text;
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: name, password: branch).then((value){
      database.child(value.user.uid).set({
        "id":value.user.uid,
        "name":name,
        "password":branch,
        "percentage":percentage
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
                        placeholder: "Enter Name here",
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
                        controller: idCtrl,
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        placeholder: "Enter ID here",
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
                        controller: branchCtrl,
                        keyboardType: TextInputType.visiblePassword,
                        placeholder: "Enter Branch here",
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
                        controller: percentCtrl,
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        placeholder: "Enter Percentage here",
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
