
import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 3,
    children: List.generate(21, (val) {
      return Container(
        padding: const EdgeInsets.all(10),
        
        child:  ListTile(
          title: Text("Item $val",
          overflow: TextOverflow.fade,),
          // leading: const Text('leading',
          // overflow: TextOverflow.fade,),
          subtitle: const Text('subtitle',
          overflow: TextOverflow.ellipsis,),
          
          tileColor: Colors.amberAccent,
          onTap: () => Text("Item $val"),
          
        ),
      );
    }),
    );
  }
}

class GridBuilderScreen extends StatelessWidget {
  const GridBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      ), 
      itemBuilder: (context, index) {
        return Container(
          
          color: Colors.amber,
          padding: const EdgeInsets.all(10),
          child: Center(child: Text("item $index")),
        );
      },
      itemCount: 30,
      );
    
  }
}