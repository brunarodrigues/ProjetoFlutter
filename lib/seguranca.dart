import 'dart:js';
import 'alterar_email.dart';
import 'alterar_senha.dart';
import 'package:flutter/material.dart';
 
class Seguranca extends StatefulWidget {
  const Seguranca({ Key? key }) : super(key: key);
 
  @override
  _SegurancaState createState() => _SegurancaState();
}
 
class _SegurancaState extends State<Seguranca> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Segurança"),),
     
      body: Column(
        children: [
          TextField(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Alterar_senha()),);
              },
                obscureText: false,
                decoration: const InputDecoration(
                  icon: Icon(Icons.vpn_key_sharp),
                  suffixIcon: Icon(Icons.chevron_right),
                  labelText: 'Senha',
                  //suffixIcon: IconButton(icon: const Icon(Icons.done_outline),
                  //onPressed: (){},
                  ),
                 
                ),
             
              /*
          TextFormField(
            obscureText: false,
             decoration: const InputDecoration(
               labelText: 'E-mail',
               ),),*/
         
        ],
      ),
     
       
    );
  }
}

