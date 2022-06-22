import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'em_andamento.dart';
import 'salvos.dart';
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
      backgroundColor:Color.fromARGB(255, 37, 98, 184),
      bottom: TabBar(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color.fromARGB(255, 26, 64, 121)
        ),
        tabs: [
          Tab(child: Text("Salvos"),),
          Tab(child: Text("Em Andamento"),),
         
        ],
        
      ),
      title:Center( child: const Text('Salvos')),
    ),
    body: TabBarView(
      children: [
       SalvosProf(),
      EmAndamento(),
       // Container(child: Center(child: Text('Em Andamento')),color: Colors.white,)
       
      ],
    ),
  ),
);
  }
  }

