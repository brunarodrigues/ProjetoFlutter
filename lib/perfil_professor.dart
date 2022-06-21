import 'package:flutter/material.dart';
import 'conta_info_pessoais.dart';
import 'notificacao.dart';
import'seguranca.dart';

class Professor_Perfil extends StatefulWidget {
  const Professor_Perfil({ Key? key }) : super(key: key);
 
  @override
  _Professor_PerfilState createState() => _Professor_PerfilState();
}
 
class _Professor_PerfilState extends State<Professor_Perfil> {
  PageController Controller = PageController(initialPage: 0);
  int index = 0;
 
  final String url = "https://static.vecteezy.com/ti/vetor-gratis/p1/2387693-icone-do-perfil-do-usuario-gr%C3%A1tis-vetor.jpg";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        title: Text("Perfil"),
        backgroundColor: Colors.blue,
        elevation: 0,
 
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
       
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16)
                ),
               
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(children:<Widget> [
                        Text("Estudantes",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
 
                        Text("30",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
 
                      ],
                      ),
                    ),
                    ClipOval(
                      child: Icon(Icons.person, size: 120, color: Colors.white, ),
                      //child: Image.network(url, width: 120, height: 120,),
 
 
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          children: <Widget>[
                            Text("Publicações",
                            style: TextStyle(color: Colors.white),
                            ),
                            Text("68",
                            style: TextStyle(color:Colors.white),
                            ),
 
                          ],
                        ),
                      )
 
                ],
                ),
 
                /*
                Padding(
                  padding: const EdgeInsets.only(top: 8, ),
                  child: ListTile(
                    title: Text("Bruna Rodrigues",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:  24,
                      fontWeight: FontWeight.bold,
 
                    ),
                    ),
                    subtitle: Text("Aluna - IFCE"),
                   
                  ),
                 
                  ),  */
                Padding(
                  padding: const EdgeInsets.only(top: 8, ),
                  child: Text("Bruna Rodrigues",
                  style: TextStyle(color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                 
                  ),
                 
                  ),
             
                 
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, ),
                  child: Text("Aluna - IFCE",
                  style: TextStyle(color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                 
                  ),
                 
                  ),
             
                 
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, ),
                  child: Text("Jaguaribe-CE",
                  style: TextStyle(color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                 
                  ),
                 
                  ),
             
                 
                ),
              ],
 
            ),
           
 
 
          ),
          ListTile(
           
              title: Text('Notificações'),
              leading: Icon(Icons.notification_important),
             
           
              ),
 
         
         
          ],
          ),
       
    );
  }
 
 
     
 
 
 
 
     
     
     
     
   
  }
 

