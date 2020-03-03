import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class StudentModule extends StatefulWidget {
  final FirebaseUser user;
  StudentModule(this.user);


  @override
  _StudentModuleState createState() => _StudentModuleState();
}

class _StudentModuleState extends State<StudentModule> {
 @override
  Widget build(BuildContext context) {
   widget.user;
    return Container();
  }
}
