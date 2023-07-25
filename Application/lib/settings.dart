import 'package:flutter/material.dart';


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
           
           
     home: Scaffold(
      
      
     body: Center(child: Container(
       child:Text('Settings', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),) ,
       
     )
     ),
  ));}
}


