import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:envio_imagem/professor/campos_criar_microconteudo.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'professor/perfil_professor.dart';
import 'professor/salvos_prof_atual.dart';
import 'professor/salvos_professor.dart';

//import 'package:flutter_application_1/banco_dados/arquivos.dart';
 
import 'professor/home_oficial_prof.dart';
 
class ChamandHome extends StatefulWidget {
  const ChamandHome({ Key? key }) : super(key: key);
 
  @override
  _HomeRealState createState() => _HomeRealState();
}
 
class _HomeRealState extends State<ChamandHome> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
     // appBar: AppBar(title: Text("Olá Professor"),),
 
  body: SafeArea(child:
  PageView(
    controller: Controller,
    children: [
   HomeReal(),
   PagesalvosProf(),
  CriarMicroconteudo(),
    Professor_Perfil(),
 
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
         
            Icon(Icons.home, color: Colors.black, size: 30,),
           
         
            Icon(Icons.bookmark, color: Colors.black,size: 30,),
           
            Icon(Icons.add_circle, color: Colors.black,size: 30,),
           
         
            Icon(Icons.person, color: Colors.black,size: 30,),
           
         
         
        ],
       
 
 
    ),  
   
);
  }
  }

