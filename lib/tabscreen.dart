
import 'package:basic_ui_class_4/gridscreen.dart';
// import 'package:basic_ui_class_4/homepage.dart';
import 'package:basic_ui_class_4/inputscreen.dart';
import 'package:basic_ui_class_4/listscreen.dart';
// import 'package:basic_ui_class_4/layoutpractice.dart';
import 'package:basic_ui_class_4/main.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: DefaultTabController(length: 4, 
      child: Scaffold(
        appBar: AppBar(
          title:const Text('Main Navigation Tab'),
          backgroundColor: Colors.blueAccent,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.grid_4x4),),
              Tab(icon: Icon(Icons.table_chart),),
              Tab(icon: Icon(Icons.app_registration),),
              Tab(icon: Icon(Icons.list),),
            ]
            ),
        ),
        body: const TabBarView(children: [
          GridBuilderScreen(),
          LoginPage(),
          MainApp(),
          ListScreen(),
        ]),
      )
      ),
    );
    
  }
}