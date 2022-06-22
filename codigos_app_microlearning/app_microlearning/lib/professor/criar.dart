import 'dart:js';
 
import 'package:flutter/material.dart';
 
class Professor_Criar extends StatefulWidget {
  const Professor_Criar({ Key? key }) : super(key: key);
 
  @override
  _Professor_CriarState createState() => _Professor_CriarState();
}
 
class _Professor_CriarState extends State<Professor_Criar> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Modelo de dose de aprendizagem"),),
     
      body: ListView(
       
       
        children: [
       
 
         // Expanded(child: SizedBox()),
 
          SizedBox(height: 20,),
          TextField(
            maxLines:null,
           
            decoration: InputDecoration(
              suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.upload)),
              //contentPadding: EdgeInsets.fromLTRB(12,0,12,0),
              border: OutlineInputBorder(
               
                borderRadius: BorderRadius.circular(60)),
             
            //  hintText: "Digite um titulo",
              labelStyle: TextStyle(color: Colors.black, fontSize: 15),
              labelText: 'Explicação',
            ),),
          SizedBox(height: 20,),
 
          TextField(
            maxLines:null,
           
            decoration: InputDecoration(
             
              //contentPadding: EdgeInsets.fromLTRB(12,0,12,0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60)),
             
            //  hintText: "Digite um titulo",
              labelStyle: TextStyle(color: Colors.black, fontSize: 15),
              labelText: 'Adicione um titulo',
            ),),
 
          SizedBox(height: 20,),
 
/*
          PopupMenuButton(itemBuilder: (context) => [PopupMenuItem(child: Text("item 1"),),
          PopupMenuItem(child: Text("item 2"),),
          PopupMenuItem(child: Text("item 3"),),
          PopupMenuItem(child: Text("item 4"),),
         
          ],),
          */
          //<MenuItem>(onSelected: (value) {if(value==MenuItem.item1)},),
           
          TextField(
            maxLines:null,
            decoration: InputDecoration(
              suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
             
             // contentPadding: EdgeInsets.fromLTRB(12,0,12,0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60)),
             
            //  hintText: "Digite um titulo",
              labelStyle: TextStyle(color: Colors.black, fontSize: 15),
              labelText: 'Adicione um exemplo com pergunta e resposta',
            ),),
           
 
           // OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.add_circle), label: Text('Adicionar')),
     
 
         
         
 
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add_circle,),
        onPressed: (){},
        ),
     
    );
  }
}

