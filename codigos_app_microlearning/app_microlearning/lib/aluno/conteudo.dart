import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class conteudo extends StatefulWidget {
  const conteudo({Key? key}) : super(key: key);

  @override
  State<conteudo> createState() => _conteudoState();
}

class _conteudoState extends State<conteudo> {
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      appBar: AppBar(title: Text("Ciências humanas",),
     /* bottom: TabBar(tabs: [
        TextField(
           
                obscureText: false,
                
                decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),

                   
                  ),
                 
                  labelText: 'Pesquise',
                  ),
                 
                ),
      ]*/),
      


      body: SafeArea(
               
        child:GridView.count(
          primary: false,
        padding: EdgeInsets.all(20),
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        children: [
          Stack(children: [
               Container(

                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  width: 200,
                  height: 200,
                
  
                  
                ),
                Positioned(child: IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: (){},
                ))

          ],),
           Stack(children: [
               Container(

                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  width: 200,
                  height: 200,
                
  
                  
                ),
                Positioned(child: IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: (){},
                ))

          ],),
       
                
        
        ]
          
          
    


        ) ,
        
      ),
  
);
  }
  }