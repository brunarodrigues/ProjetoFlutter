
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
 
class AlunoHome extends StatefulWidget {
  const AlunoHome({ Key? key }) : super(key: key);
 
  @override
  _AlunoHomeState createState() => _AlunoHomeState();
}
 
class _AlunoHomeState extends State<AlunoHome> {
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
              new BoxShadow(color: Colors.blue, offset: new Offset(6.0, 6.0),),  
            ],
          ),  
          child: Text("Ciências humanas",  
              style: TextStyle(fontSize: 30)),  
          ),
         
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
          child: Text("Ciências da natureza",  
              style: TextStyle(fontSize: 30)),  
          ),
 
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
          child: Text("Linguagens e códigos",  
              style: TextStyle(fontSize: 30)),  
          ),
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
          child: Text("Matemática",  
              style: TextStyle(fontSize: 30)),  
          ),
 
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
          child: Text("Redação ",  
              style: TextStyle(fontSize: 30)),  
          ),
          SizedBox(width: 10,height: 10,),
 
 
     
 
         
        ],
      ),
         
     
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

