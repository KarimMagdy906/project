import 'package:flutter/material.dart';
import 'second_page.dart';
import 'settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  @override
  Widget build(BuildContext context) {
    
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: FirstPage(),
      
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   int cIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: const Text('Application'),
          automaticallyImplyLeading: false,
        ),
        body: Center( 
          child: cIndex == 0 ? Container(
              child: SizedBox(child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                  return SecondPage();
                 
                }));
                
              },
                 child: Text('Button \n (New Page)', style: TextStyle(fontSize: 20),)
                 
                 ),
                width: 200,
                height: 100,
                 )
                 
            
          ):Settings(),
          
        ),
         bottomNavigationBar: BottomNavigationBar(

           items: const [
             BottomNavigationBarItem(
              
              icon: Icon(Icons.home),
              label: 'Home',
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              
            
              
            )
          ],
          currentIndex: cIndex,
          onTap: (int index){
            setState(() {
              cIndex=index;
            });
          },
        ),
        
      );
  }
}



