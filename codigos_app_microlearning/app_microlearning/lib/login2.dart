import 'dart:js';

import 'package:flutter/material.dart';

import 'aluno/home_aluno.dart';
import 'aluno/home_atual_aluno.dart';
import 'professor/home_professor.dart';
 
class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);
 
 
 
  @override
  _LoginState createState() => _LoginState();
}
 
class _LoginState extends State<Login> {
 
   bool _password = false;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
      body: Padding(
     
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
         
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Text("E-mail"),
              //Text("Senha"),
              TextField(
               /*autofocus: true,
                decoration:
                InputDecoration(border:
                InputBorder.none,
                icon: Icon(Icons.email, color: Colors.blue,),
                hintText: 'Informe o nome'),
                */
                autofocus: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  labelText: "E-mail do usuário",
                  hintText: "E-mail",
                  hintStyle: TextStyle(color: Colors.blue, fontSize: 15),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 18),
               
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.lightBlue,
                  )
                ),
 
 
              ),
             /* TextField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.blue, fontSize: 20),
                decoration: InputDecoration(
                  labelText: "Senha do usuário",
                  hintText: "Informe a senha",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.remove_red_eye_rounded,
 
                    ),),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.lightBlue,
                  ),
                 
                  ),
              ),*/
 
 
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black,  fontSize: 20),
                decoration: InputDecoration(
                  labelText: "Senha do usuário",
                  hintText: "senha",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 18),
                  hintStyle: TextStyle(color: Colors.blue, fontSize: 15),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,)
                  ),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.lightBlue,
                  ),
                  suffixIcon: GestureDetector(
                    child: Icon( _password == false ? Icons.visibility_off : Icons.visibility, color: Colors.black,),
                    onTap: (){
                      setState(() {
                        _password = ! _password;
                       
                      });
                     
                    },
 
                    ),
 
                    ),
                    obscureText: _password == false ? true: false,
                ),
       
 
             
              Align(
                alignment: Alignment.centerRight,
                child: Text("Esqueci senha"),
              ),
 
              SizedBox(width: 40,height: 40,),
 
              Align(
                alignment: Alignment.center,
                child: Text("Entrar como:"),
              ),
             
           
              SizedBox(
                width: 50,
                height: 50,
 
                child:Center(
                  child: ElevatedButton(
                    child: Text("aluno",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Aluno_Home()),
                      );
                    },
                  ),
                 
                 
                ),
                   
 
                    ),
              SizedBox(
                width: 50,
                height: 50,
 
                child:Center(
                  child: ElevatedButton(
                    child: Text("professor",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Professor_Home()),
                      );
                    },
                  ),
                 
                 
                ),
                   
 
                    ),
                   
                   
 
           
               
 
             
             
             
 
 
 
     
 
             
 
 
            ],
          ),
       
        ),
      ),
    );
  }
}

