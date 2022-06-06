import 'package:envio_imagem/professor/campos_criar_microconteudo.dart';
import 'campos_criar_microconteudo.dart';
//import 'criar.dart';
import 'salvos_professor.dart';
import 'perfil_professor.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Professor_Home extends StatefulWidget {
  const Professor_Home({Key? key}) : super(key: key);

  @override
  _Professor_HomeState createState() => _Professor_HomeState();
}

class _Professor_HomeState extends State<Professor_Home> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text("Aluno"),
 
    ),*/

      //appBar: AppBar(title:Text("O que é Microlearning?")),

      body: PageView(
        controller: Controller,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(15.0),
            title: Text('O que é Microlearning?'),
            visualDensity: VisualDensity(horizontal: -4, vertical: -4),
          ),
          /*
          ListTile(
            title: Text("- Microlearning ou Micro Aprendizagem consiste no ensino que acontece em pequenos pedaços e em um curto espaço de tempo"),
      ),
      */

          /*
      SizedBox(
      child: Center(
        child: Image.network("https://www.solucaocasting.com.br/wp-content/uploads/2019/06/rockcontent-bucket_images_production_295158-treinamento-em-pilulas-de-conhecimento-o-que-e-e-como-funciona-1-1200x812.jpg"),),
     
       
      ),
         */

          Professor_Save(),
          CriarMicroconteudo(),
          Professor_Perfil(),
        ],
      ),

      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.lightBlue,
        buttonBackgroundColor: Colors.lightBlue,
        backgroundColor: Colors.transparent,
        onTap: (index) {
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
          Icon(
            Icons.home,
            color: Colors.black,
            size: 30,
          ),
          Icon(
            Icons.bookmark,
            color: Colors.black,
            size: 30,
          ),
          Icon(
            Icons.add_circle,
            color: Colors.black,
            size: 30,
          ),
          Icon(
            Icons.person,
            color: Colors.black,
            size: 30,
          ),
        ],
      ),
    );
  }
}
