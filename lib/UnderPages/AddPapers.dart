import 'package:aptech_e_project/Home/MainHome.dart';
import 'package:flutter/material.dart';

import '../Utils.dart';

class AddPapers extends StatefulWidget {
  @override
  _AddPapersState createState() => _AddPapersState();
}

class _AddPapersState extends State<AddPapers> {
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

    );
  }
}
