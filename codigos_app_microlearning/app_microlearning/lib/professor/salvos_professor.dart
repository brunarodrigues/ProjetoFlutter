import 'package:flutter/material.dart';
 
class Professor_Save extends StatefulWidget {
  const Professor_Save({ Key? key }) : super(key: key);
 
  @override
  _Professor_SaveState createState() => _Professor_SaveState();
}
 
class _Professor_SaveState extends State<Professor_Save> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: ListView(
        padding: EdgeInsets.all(8),
          children: [
             TextField(
            decoration: InputDecoration(
              prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.mic)),
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
              //trailing:  Icon(Icons.favorite),),
             
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                ],
 
 
              ),),
             
              ListTile(
                title: Text('Matemática'),
                subtitle: Text("Potência"),
                leading: CircleAvatar(backgroundImage: NetworkImage("https://thumbs.dreamstime.com/z/ilustra%C3%A7%C3%A3o-lisa-redonda-do-vetor-da-matem%C3%A1tica-e-ci%C3%AAncia-113538205.jpg"),),
                //trailing: Icon(Icons.favorite),),
                trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                 
                ],),
 
 
              ),
 
               
             
       
 
           
          ],
      ),
 
     
    );
  }
}

