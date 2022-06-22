import 'package:flutter/material.dart';
 
class Aluno_Favorite extends StatefulWidget {
  const Aluno_Favorite({ Key? key }) : super(key: key);
 
  @override
  _Aluno_FavoriteState createState() => _Aluno_FavoriteState();
}
 
class _Aluno_FavoriteState extends State<Aluno_Favorite> {
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
              //trailing: Icon(Icons.favorite),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){},icon: Icon(Icons.favorite_outlined)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                ],
 
 
              ),),
             
              ListTile(
              title: Text('Português'),
              subtitle: Text("Figuras de linguagem"),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/vectors/portuguese-vector-id1181232702?k=20&m=1181232702&s=612x612&w=0&h=Zn_nUUkDQ2u0oo39oforXxahP8cdwFcXJs7oMWV7fJg="),),
              //trailing: Icon(Icons.favorite),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outlined)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                ],
 
 
              ),),
           
             
 
       
 
           
          ],
 
         /*
        children: [
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                borderSide: const BorderSide(
                  color: Colors.grey,
                )
              ),
              labelStyle: TextStyle(color: Colors.black, fontSize: 18),
              labelText: 'Pesquise aqui!',
             
 
 
 
            ),
          ),
         
        ],*/
      ),
     
    );
  }
}

