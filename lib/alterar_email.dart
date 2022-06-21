import 'dart:js';
 
import 'package:flutter/material.dart';
 
class Alterar_email extends StatefulWidget {
  const Alterar_email({ Key? key }) : super(key: key);
 
  @override
  _Alterar_emailState createState() => _Alterar_emailState();
}
 
class _Alterar_emailState extends State<Alterar_email> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alterar E-mail"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.done,
              color: Colors.white,
      ),
      onPressed: () {
        // do something
      },
    )
  ],
       
        ),
     
      body: Column(
        children: [
          SizedBox(height: 10,),
         TextField(
             
                obscureText: false,
                decoration: const InputDecoration(
                  //border: OutlineInputBorder(),
                 
                  icon: Icon(Icons.email_rounded),
             
                  labelText: 'Alterar e-mail',
 
                 
                 
                ),
              )
         
       
         
        ],
      ),
     
       
    );
  }
}

