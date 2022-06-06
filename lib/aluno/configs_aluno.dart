import 'package:flutter/material.dart';
 
class Aluno_Configuration extends StatefulWidget {
  const Aluno_Configuration({ Key? key }) : super(key: key);
 
  @override
  _Aluno_ConfigurationState createState() => _Aluno_ConfigurationState();
}
 
class _Aluno_ConfigurationState extends State<Aluno_Configuration> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Configurações e preferências")),
      body: ListView(
          controller: Controller,
         
        children: [
          ListTile(
           
            title: Text('Todos'),
            trailing: IconButton(onPressed: (){}, icon: Icon (Icons.add)),
           
            ),
          ListTile(
             
              title: Text('Matemática'),
              trailing: IconButton(onPressed: (){}, icon: Icon (Icons.add)),
              ),
          ListTile(
              title: Text('Português'),
              trailing: IconButton(onPressed: (){}, icon: Icon (Icons.add)),
              ),
          ListTile(
              title: Text('Física'),
              trailing: IconButton(onPressed: (){}, icon: Icon (Icons.add)),
              ),
     
        ],
            ),
          );
       
       
     
  }
}

