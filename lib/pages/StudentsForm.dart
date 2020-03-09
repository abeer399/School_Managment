import 'package:aptech_e_project/Home/MainHome.dart';
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
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController branchCtrl = TextEditingController();
  TextEditingController percentCtrl = TextEditingController();

  saveData() {
    final DatabaseReference database = FirebaseDatabase.instance.reference();
    String id = idCtrl.text;
    String name = nameCtrl.text;
    String branch = branchCtrl.text;
    String percentage = percentCtrl.text;
    database.child("Student Performance").set({
      "id": id,
      "name": name,
      "password": branch,
      "percentage": percentage
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        centerTitle: true,
        title: Text(
          "Student Form",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "Montserrat"),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              navigate(context, MainHome());
            },
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
                padding: EdgeInsetsDirectional.only(start: 20, top: 30),
                child: Container(
                  child: Text(
                    "STUDENT FORM",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 20, start: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: getScreenSize(context).width - 60,
                    height: 60,
                    child: Card(
                      child: CupertinoTextField(
                        placeholder: "Enter Name here",
                        controller: nameCtrl,
                        enableSuggestions: true,
                        style: TextStyle(color: Colors.white),
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
                padding: EdgeInsetsDirectional.only(top: 30, start: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: getScreenSize(context).width - 60,
                    height: 60,
                    child: Card(
                      child: CupertinoTextField(
                        controller: idCtrl,
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        placeholder: "Enter ID here",
                        enableSuggestions: true,
                        style: TextStyle(color: Colors.white),
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
                padding: EdgeInsetsDirectional.only(top: 20, start: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: getScreenSize(context).width - 60,
                    height: 60,
                    child: Card(
                      child: CupertinoTextField(
                        autocorrect: true,
                        controller: branchCtrl,
                        keyboardType: TextInputType.visiblePassword,
                        placeholder: "Enter Branch here",
                        enableSuggestions: true,
                        style: TextStyle(color: Colors.white),
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
                padding: EdgeInsetsDirectional.only(top: 20, start: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: getScreenSize(context).width - 60,
                    height: 60,
                    child: Card(
                      child: CupertinoTextField(
                        controller: percentCtrl,
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        placeholder: "Enter Percentage here",
                        enableSuggestions: true,
                        style: TextStyle(color: Colors.white),
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
                padding: EdgeInsetsDirectional.only(top: 20, start: 97),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: Colors.pink,
                    child: CupertinoButton(
                      onPressed: () {
                        saveData();
                        idCtrl.clear();
                        percentCtrl.clear();
                        branchCtrl.clear();
                        nameCtrl.clear();
                      },
                      color: Colors.pink,
                      child: Container(
                        child: Text(
                          "ADD",
                          style: TextStyle(color: Colors.white),
                        ),
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
