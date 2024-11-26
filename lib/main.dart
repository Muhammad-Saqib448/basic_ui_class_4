// ignore: unused_import
import 'package:basic_ui_class_4/layoutpractice.dart';
import 'package:basic_ui_class_4/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   title: 'Routing and Navigation',

  //   initialRoute: '/',
  //   routes: {
  //     '/': (context) => const MainApp(),
  //     '/home': (context) =>const HomePage(),
  //     '/layout': (context) => const Layoutpractice(),
  //   },
  // ));
  runApp( const MaterialApp(
    title:  'Navigation and Routing',
    debugShowCheckedModeBanner: false,
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  
       Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Center(child: Text("Main App")),
          actions: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const HomePage())
              );
              // print(result);
            }, 
            child:const Icon(Icons.home),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const Layoutpractice()),
              );
            }, 
            child:const Icon(Icons.tab),
            ),
          ],
        ),
      
      
    );
  }
}
