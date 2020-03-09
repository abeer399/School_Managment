
import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:aptech_e_project/Modules/Contact.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../Utils.dart';
typedef OnFileDone(StorageReference storageReference);

class AddPapers extends StatefulWidget {
  @override
  _AddPapersState createState() => _AddPapersState();
}

class _AddPapersState extends State<AddPapers> {

  File image;

  uploadImage( OnFileDone onDone) {
    FirebaseStorage.instance
        .ref()
        .child(image.path.split("/").last)
        .putFile(image)
        .events
        .listen((event) {
      if (event.type == StorageTaskEventType.success) {
        onDone(event.snapshot.ref);
      } else if (event.type == StorageTaskEventType.failure) {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("File not supported"),
        ));
      }
    });
  }

  getImage() async {
    var img = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      image = img;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Paper",style: TextStyle(fontFamily: "Montserret",fontWeight: FontWeight.bold),),
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
                padding: EdgeInsetsDirectional.only(top: 15,start: 75),
                child: Text("UPLOAD PAPERS",style: TextStyle(color: Colors.white,fontFamily: "Montserrat",fontSize: 24),),
              ),
              Container(
                padding: EdgeInsetsDirectional.only(start: 105,top: 25),
                child: Image.asset("images/test.png",height: 150,),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 80,top: 50),
                child: InkWell(
                  onTap:() async{

                      await getImage();
                      uploadImage((storageReference) => FirebaseStorage);

                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 60,
                      width: getScreenSize(context).width-150,
                      color: Colors.pink,
                      child: Container(
                        padding: EdgeInsetsDirectional.only(top: 17,start: 65),
                        child: Text("UPLOAD",style: TextStyle(fontSize: 18,fontFamily: "Montserrat"),),
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


