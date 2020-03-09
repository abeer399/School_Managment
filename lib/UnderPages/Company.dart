import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:aptech_e_project/Utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Company extends StatefulWidget {
  @override
  _CompanyState createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  TextEditingController detailCtrl = TextEditingController();
  TextEditingController jobdescriptionCtrl = TextEditingController();

  saveData() {
    final DatabaseReference database =
        FirebaseDatabase.instance.reference();
    String jobdescription = jobdescriptionCtrl.text;
    String companydetail = detailCtrl.text;
    database.child("jobs").set({
      "jobdescription": jobdescription,
      "companydetail": companydetail,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "COMPANY",
          style:
              TextStyle(fontFamily: "Montserret", fontWeight: FontWeight.bold),
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
                    "COMPANY FORM",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 30, start: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: getScreenSize(context).width - 60,
                    height: 150,
                    child: Card(
                      child: CupertinoTextField(
                        controller: detailCtrl,
                        autocorrect: true,
                        keyboardType: TextInputType.visiblePassword,
                        placeholder: "Enter Company detail here",
                        enableSuggestions: true,
                        maxLines: 8,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        placeholderStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                        ),
                        padding: EdgeInsetsDirectional.only(start: 15, top: 15),
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
                    height: 150,
                    child: Card(
                      child: CupertinoTextField(
                        controller: jobdescriptionCtrl,
                        autocorrect: true,
                        placeholder: "Enter Job detail here",
                        enableSuggestions: true,
                        maxLines: 8,
                        style: TextStyle(color: Colors.white),
                        placeholderStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                        ),
                        padding: EdgeInsetsDirectional.only(start: 15, top: 15),
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
                        setState(() {
                          saveData();
                          detailCtrl.clear();
                          jobdescriptionCtrl.clear();
                        });
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
