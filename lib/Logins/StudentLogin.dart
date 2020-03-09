import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:aptech_e_project/Modules/StudentModule.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Utils.dart';

class StudentLogin extends StatefulWidget {
  @override
  _StudentLoginState createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  TextEditingController emailCtrl = TextEditingController();

  TextEditingController passCtrl = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isLoading;

  String error;

  @override
  void initState() {
    isLoading = false;
    error = "";
    super.initState();
  }

  checkUser() async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    if (user != null) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => StudentModule(user)));
    }
  }

  signIn() async {
    try {
      setState(() {
        isLoading = true;
        error = "";
      });
      var auth = FirebaseAuth.instance;
      var response = await auth.signInWithEmailAndPassword(
          email: emailCtrl.text, password: passCtrl.text);
      checkUser();
    } catch (e) {
      print(e);
      error = "There was a problem while logging in";
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STUDENT",style: TextStyle(fontFamily: "Montserrat",color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){navigate(context, MainHome());},
          child: Icon(Icons.navigate_before,color: Colors.white,size: 30,),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsetsDirectional.only(top: 40,start: 20),
                    child: Text("STUDENT LOGIN",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 34,color: Colors.white),),
                  ),
                  error.isNotEmpty ? Text(error) : SizedBox(),
                  Container(
                    padding: EdgeInsetsDirectional.only(top: 50,start: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        width: getScreenSize(context).width-60,
                        height: 60,
                        child: Card(
                          child: TextFormField(
                            controller: emailCtrl,
                            validator: (value) {
                              if (!value.contains("@")) {
                                return "Please enter a valid email";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.black,
                                border: InputBorder.none,
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    color: Colors.grey,
                                  fontFamily: "Montserrat"
                                ),
                                contentPadding: EdgeInsetsDirectional.only(start: 15)
                            ),
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
                          child: TextFormField(
                            obscureText: true,
                            controller: passCtrl,
                            validator: (value) {
                              if (value.length < 6) {
                                return "Password must be at least 6 characters long";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                fillColor: Colors.black,

                                border: InputBorder.none,
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    color: Colors.grey,
                                  fontFamily: "Montserrat"
                                ),
                                contentPadding: EdgeInsetsDirectional.only(start: 15)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        if(formKey.currentState.validate())
                          {
                            signIn();
                          }
                      },
                      child:Container(
                        padding: EdgeInsetsDirectional.only(top: 50,start: 80),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Container(
                            color: Colors.pink,
                            height: 50,
                            width: getScreenSize(context).width-180,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(top:8,start: 58),
                              child: Text("Login",style: TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
                            ),
                          ),
                        ),
                      )

                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
