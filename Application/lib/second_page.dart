import 'package:flutter/material.dart';
import 'main.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: BackButton(onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return FirstPage();
        },),
      );
  }),
     ),
     body: Center(child: Container(
        child: Image.asset('images/Flutter-App-development.jpg',),
     )
     ),
  ));}
}
