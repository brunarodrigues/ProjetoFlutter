//import 'Aluno_pilula.dart';
import 'home_aluno.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
 
import 'configs_aluno.dart';
//import 'aluno_conteudo.dart';
//import 'aluno_disciplinas.dart';
import 'favoritos_aluno.dart';
import 'configs_aluno.dart';
import 'favoritos_aluno.dart';
import 'home_aluno.dart';
 
 
class ChamandHomeAluno extends StatefulWidget {
  const ChamandHomeAluno({ Key? key }) : super(key: key);
 
  @override
  _ChamandHomeAlunoState createState() => _ChamandHomeAlunoState();
}
 
class _ChamandHomeAlunoState extends State<ChamandHomeAluno> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title: Text("Olá, usuário"),),
 
  body: SafeArea(child:
  PageView(
    controller: Controller,
    children: [
      Aluno_Home(),
      Aluno_Favorite(),
      Aluno_Configuration(),
     // Aluno_Conteudo(),
      //Aluno_Disciplinas(),
      //Aluno_pilula()
 
  ],)
  ),
 
   
    bottomNavigationBar: CurvedNavigationBar(
        color: Colors.lightBlue,
        buttonBackgroundColor: Colors.lightBlue,
        backgroundColor: Colors.transparent,
       
        onTap: (index){
          setState(() {
            index = index;
       
 
          });
          Controller.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
 
        items: const [
         
           
            Icon(Icons.home,color: Colors.black, size: 30,),
         
            Icon(Icons.favorite,color: Colors.black, size: 30,),
           
            Icon(Icons.settings,color: Colors.black, size: 30, ),
           
           
        ],
     ),
   
);
  }
  }
 
class HomeReal {
}
 
 

