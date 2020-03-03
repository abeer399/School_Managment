import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:aptech_e_project/Utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class TPO extends StatefulWidget {
  
  @override
  _TPOState createState() => _TPOState();
}

class _TPOState extends State<TPO> {
  TextEditingController idCtrl = TextEditingController();
  TextEditingController namelCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();

  saveData(){
    final DatabaseReference database = FirebaseDatabase.instance.reference().child("user");
    String id = idCtrl.text;
    String name = namelCtrl.text;
    String password = passCtrl.text;
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: name, password: password).then((value){
      database.child(value.user.uid).set({
        "id":value.user.uid,
        "name":name,
        "password":password
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
        title: Text("TPO Form",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: "Montserrat"),),
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
                  child: Text("TPO FORM",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold,fontFamily: "Montserrat"),),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(top: 40,start: 30),
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
                padding: EdgeInsetsDirectional.only(top: 40,start: 30),
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
                padding: EdgeInsetsDirectional.only(top: 40,start: 30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: getScreenSize(context).width-60,
                    height: 60,
                    child: Card(
                      child: CupertinoTextField(
                        obscureText: true,
                        autocorrect: true,
                        controller: passCtrl,
                        keyboardType: TextInputType.visiblePassword,
                        placeholder: "Enter Password here",
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



