import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:ui';


Size getScreenSize(BuildContext context) => MediaQuery.of(context).size;

setTimeout(void callback(Timer timer),int time){
  Timer timer;
  timer = Timer(Duration(milliseconds: time), (){
    callback(timer);
  });
}

navigate(BuildContext context,Widget route){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => route)
  );
}
navigateClearStack(BuildContext context,Widget route){
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => route),
      ModalRoute.withName("/ROOT")
  );
}

//void registerPlugins(PluginRegistry registry) {
//  //FirebaseCoreWeb.registerWith(registry.registrarFor(FirebaseCoreWeb));
//  registry.registerMessageHandler();
//}

