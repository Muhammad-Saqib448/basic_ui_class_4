
import 'package:flutter/material.dart';


class Layoutpractice extends StatelessWidget {
  const Layoutpractice({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        title:const Text("Table Display",),
      ),
      body: Container(
        padding:const EdgeInsets.all(30),
        decoration: BoxDecoration(
          border: Border.all( color: Colors.white, strokeAlign: BorderSide.strokeAlignInside),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding:const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),
              child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Row 1"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Row 2"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Row 3"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white)
              ),
              child:const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Row 1"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Row 2"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Row 3"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}