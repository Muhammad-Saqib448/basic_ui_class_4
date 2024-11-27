
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {

  final myController = TextEditingController();
  String mystring = '';

  @override
  Widget build(BuildContext context) {
    
    return 
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: const Center(child: Text("Login Page")),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Padding(padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration:const InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                  controller: myController,
                
                ),
                ),
                Padding(padding:const EdgeInsets.all(10),
                child: TextFormField(
                  decoration:const InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                ),
                TextButton(onPressed: (){
                  setState(() {
                  mystring = myController.value.toString();
                    
                  });
                }, 
            
                child: const Text('Login')),
                // Text(mystring),
              ],
              
            ),
          ),
        ),
        
      
    );
    
    
  }
}