import 'dart:js';
 
import 'package:flutter/material.dart';
 
class Alterar_senha extends StatefulWidget {
  const Alterar_senha({ Key? key }) : super(key: key);
 
  @override
  _Alterar_senhaState createState() => _Alterar_senhaState();
}
 
class _Alterar_senhaState extends State<Alterar_senha> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text("Alterar senha"),),
     
      body: Column(
        children: [
          SizedBox(
                  height: 10,
                ),
          TextField(
           
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                 
                  labelText: 'Senha Atual',
                  ),
                 
                ),
                SizedBox(
                  height: 10,
                ),
               
                TextField(
           
                obscureText: false,
                decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                 
                 
                  labelText: ' Nova senha',
                  ),
                 
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
           
                obscureText: false,
                decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                 
                 
                  labelText: 'Repetir nova senha',
                  ),
                 
                ),
           
         
         
         
        ],
      ),
     
       
    );
  }
}

