import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.black,
        ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(_counter.toString(),
          style: const TextStyle(
            fontSize: 30,
          ),),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _counter += 1;
        });
      },
      tooltip: "Increment",
      child:const Icon(Icons.add),
      ),
      
    );
    
  }
}

