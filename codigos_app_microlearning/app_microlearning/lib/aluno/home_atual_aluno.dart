import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:envio_imagem/aluno/aluno_disciplinas.dart';
import 'package:flutter/material.dart';

 
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
      appBar: AppBar(title: Text("Olá, usuário"), actions: [Icon(Icons.more_vert)]),
 
      body: SafeArea(child: ListView(
 
        children: [
          Container(
            padding: EdgeInsets.all(30),  
            margin: EdgeInsets.all(20),  
            height: 200,
            width: double.infinity,
            alignment: Alignment.center,  
            decoration: BoxDecoration(  
            borderRadius: BorderRadius.circular(8),  
           boxShadow: [  
              new BoxShadow(color: Colors.red.shade100, offset: new Offset(6.0, 6.0),),  
            ],
          ),  
          child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Aluno_Disciplinas()),
          );}, child: Text("Ciências humanas",  
              style: TextStyle(fontSize: 30)),  
          )),
         
          Container(            
            padding: EdgeInsets.all(30),  
            margin: EdgeInsets.all(20),  
            height: 200,
            width: double.infinity,
            alignment: Alignment.center,  
            decoration: BoxDecoration(  
            borderRadius: BorderRadius.circular(8),  
            boxShadow: [  
              new BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),  
 
            ],  
          ),  
          child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Aluno_Disciplinas()),
          );}, child: Text("Ciencias da Natureza",  
          style: TextStyle(fontSize: 30)),
          ),),
 
          Container(
            padding: EdgeInsets.all(30),  
            margin: EdgeInsets.all(20),  
            height: 200,
            width: double.infinity,
            alignment: Alignment.center,  
            decoration: BoxDecoration(  
            borderRadius: BorderRadius.circular(8),  
            boxShadow: [  
              new BoxShadow(color: Colors.purple, offset: new Offset(6.0, 6.0),),  
            ],  
          ),  
          child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Aluno_Disciplinas()),
          );}, child: Text("Linguagens e códigos",style: TextStyle(fontSize: 30)), ),),  
         
          Container(
            padding: EdgeInsets.all(30),  
            margin: EdgeInsets.all(20),
            height: 200,
            width: double.infinity,  
            alignment: Alignment.center,  
            decoration: BoxDecoration(  
            borderRadius: BorderRadius.circular(8),  
            boxShadow: [  
              new BoxShadow(color: Colors.orange, offset: new Offset(6.0, 6.0),),  
            ],  
          ),
          child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Aluno_Disciplinas()),
          );}, child: Text("Matemática",  style: TextStyle(fontSize: 30)), )),  
         
          Divider(),
 
          Container(
            padding: EdgeInsets.all(30),  
            margin: EdgeInsets.all(20),
            height: 200,
            width: double.infinity,  
            alignment: Alignment.center,  
            decoration: BoxDecoration(  
            borderRadius: BorderRadius.circular(8),  
            boxShadow: [  
              new BoxShadow(color: Colors.red, offset: new Offset(6.0, 6.0),),  
            ],  
          ),  
          child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Aluno_Disciplinas()),
          );}, child: Text("Redação ",  style: TextStyle(fontSize: 30)),
             ),  
          ),
         
 
 
     
 
          /*TextField(
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
          ),*/
         
          /*
         
          Aluno_Favorite(),
          Aluno_Configuration(),
          Aluno_Conteudo(),
          Aluno_Disciplinas(),
          */
        ],
      ),
         
     
        ),
    /*bottomNavigationBar: CurvedNavigationBar(
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
     ),*/
     );
  }
}


