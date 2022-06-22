import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:envio_imagem/professor/display_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'perfil_professor.dart';
import 'salvos_professor.dart';
import 'display_page.dart';
//import 'package:flutter_application_1/banco_dados/arquivos.dart';
 
class HomeReal extends StatefulWidget {
  const HomeReal({ Key? key }) : super(key: key);
 
  @override
  _HomeRealState createState() => _HomeRealState();
}
 
class _HomeRealState extends State<HomeReal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
  body: SafeArea(child: GridView.count(
   
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
     // decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16))),
      padding: const EdgeInsets.all(8),
      color: Colors.teal[100],
      child: Center( child: IconButton(icon: Icon (Icons.add_circle, size: 100, semanticLabel: 'Criar', ),
       onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> DisplayPage(), //imageBd
          ),);
          },
          ),
          ),   //("Criar"),),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[200],
      child:  Center( child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Professor_Save(),));},
       icon: Icon(Icons.bookmark, size:100, semanticLabel: 'Salvos'),),
    ),
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[300],
      child: Center( child: Icon(Icons.tips_and_updates, size: 100,semanticLabel: 'Dicas')),
     
      
    ),
    Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[400],
      child:  Center( child: Icon(Icons.help, size: 100, semanticLabel: 'Ajuda'),),
    ),
 
  ],
),
    ),
 
 
   
);
  }
  }
