
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'configs_aluno.dart';
import '../../professor/favoritos_aluno.dart';
 
class Aluno_Home extends StatefulWidget {
  const Aluno_Home({ Key? key }) : super(key: key);
 
  @override
  _Aluno_HomeState createState() => _Aluno_HomeState();
}
 
class _Aluno_HomeState extends State<Aluno_Home> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
 
     /* appBar: AppBar(
        title: Text("Aluno"),
 
       
     
    ),*/
 
    /*
      body: ListView(
        padding: EdgeInsets.all(8),
          children: [
            TextField(
           
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )
              ),
              labelStyle: TextStyle(color: Colors.black, fontSize: 18),
              labelText: 'Pesquise aqui!',
            ),),
 
            ListTile(
              title: Text('Matemática'),
              subtitle: Text("Porcentagem"),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://thumbs.dreamstime.com/z/ilustra%C3%A7%C3%A3o-lisa-redonda-do-vetor-da-matem%C3%A1tica-e-ci%C3%AAncia-113538205.jpg"),),
              //trailing: Icon(Icons.favorite),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite_outlined),
                  Icon(Icons.share),
                ],
 
 
              ),),
      */
 
   
       
        body: PageView(
          controller: Controller,
        children: [
          TextField(
            decoration: InputDecoration(
              prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              suffixIcon: IconButton(onPressed: (){}, icon:Icon(Icons.mic)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )
              ),
              labelStyle: TextStyle(color: Colors.black, fontSize: 18),
              labelText: 'Pesquise aqui!',
 
 
 
            ),
          ),
         
         
         
          Aluno_Favorite(),
          Aluno_Configuration(),
         
        ],
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

