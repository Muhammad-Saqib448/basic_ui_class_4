
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      
      children: List.generate(30, (index) {
        return ListTile(title: Text("Item $index"),leading: Text("$index"),
        subtitle: const Text("subtitle"),
        trailing:const Text("Trailing"),
        selectedTileColor: Colors.blueAccent,
        textColor: Colors.black,
        hoverColor: Colors.amberAccent,
        mouseCursor: MouseCursor.defer,
        );
      })
    );
    
  }
}