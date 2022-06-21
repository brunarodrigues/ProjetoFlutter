import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/banco_dados/LoginBD/homepages/alunodisciplina/aluno/emandamento.dart';
//import 'package:flutter_application_1/banco_dados/LoginBD/homepages/alunodisciplina/aluno/salvosProf.dart';
 
class PagesalvosProf extends StatefulWidget {
  const PagesalvosProf({ Key? key }) : super(key: key);
 
  @override
  _PagesalvosProfState createState() => _PagesalvosProfState();
}
 
class _PagesalvosProfState extends State<PagesalvosProf> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
  length: 2,
  child: Scaffold(
    backgroundColor: Colors.green,
    extendBody: true,
    appBar: AppBar(
      bottom: TabBar(
        tabs: [
          Tab(child: Text("salvos")),
          Tab(child: Text("Em Andamento"),),
         
        ],
      ),
      title:Center( child: Text('Salvos')),
    ),
    body: TabBarView(
   
      children: [
       //SalvosProfessor(),
      // EmAndamentoProfPage(),
       // Container(child: Center(child: Text('Em Andamento')),color: Colors.white,)
       
      ],
    ),
  ),
);
  }
  }

