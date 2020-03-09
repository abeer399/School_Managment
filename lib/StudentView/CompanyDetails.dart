import 'package:flutter/material.dart';

class CompanyDetails extends StatefulWidget {
  @override
  _CompanyDetailsState createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("JOB DETAILS",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Montserrat"),),

      ),
    );
  }
}
