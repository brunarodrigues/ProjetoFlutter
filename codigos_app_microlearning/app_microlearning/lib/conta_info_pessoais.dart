import 'dart:js';
 
import 'alterar_email.dart';
import 'package:flutter/material.dart';
 
class Conta extends StatefulWidget {
  const Conta({ Key? key }) : super(key: key);
 
  @override
  _ContaState createState() => _ContaState();
}
 
class _ContaState extends State<Conta> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Informações Pessoais"),),
     
 
      body: Column(
        children: [
           TextField(
             onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Alterar_email()),);
              },
           
                obscureText: false,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.chevron_right,),
                  icon: Icon(Icons.email_rounded),
             
                  labelText: 'E-mail',
 
                 
                 
                ),
              )
              /*
          TextFormField(
            obscureText: false,
             decoration: const InputDecoration(
               labelText: 'E-mail',
               ),),
*/
 
 
         
         
        ],
      ),
     
       
    );
  }
}

