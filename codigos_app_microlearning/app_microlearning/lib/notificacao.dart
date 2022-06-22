import 'dart:js';
 
import 'package:flutter/material.dart';
 
class Notificacao extends StatefulWidget {
  const Notificacao({ Key? key }) : super(key: key);
 
  @override
  _NotificacaoState createState() => _NotificacaoState();
}
 
class _NotificacaoState extends State<Notificacao> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notificações"),),
     
      body: Column(
        children: [
          ListTile(
              title: Text('Pausar'),
             
              trailing: IconButton(
                icon: const Icon(Icons.toggle_off_rounded),
                onPressed: (){},
          ),
         
     
              ),
         
         /* TextField(
           
            obscureText: false,
            decoration: const InputDecoration(
              labelText: 'Pausar',
                ),
              )*/
            /*
          TextFormField(
           
            obscureText: false,
             decoration: const InputDecoration(
               
               labelText: 'Pausar',
               suffixIcon: Icon(Icons.add),
 
               ),),*/
         
        ],
      ),
     
       
    );
  }
}

