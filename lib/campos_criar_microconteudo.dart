import 'dart:io';
import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart';
import 'display_page.dart';
import 'save_page.dart';
import 'dart:async';
import 'criado.dart';

class CriarMicroconteudo extends StatelessWidget {
  PickedFile? pickedFile;

  List<ParseObject> results = <ParseObject>[];
  double selectedDistance = 3000;
  final TextEditingController _controladorDisciplina = TextEditingController();
  final TextEditingController _controladorTitulo = TextEditingController();
  final TextEditingController _controladorSubtitulo = TextEditingController();
  final TextEditingController _controladorDescricao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //var controlle
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Criar microconteudo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: _controladorDisciplina,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nome da disciplina'),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: _controladorTitulo,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Titulo'),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: _controladorSubtitulo,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Subtitulo'),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                controller: _controladorDescricao,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Descrição'),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                  child: Text('Upload File'),
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SavePage()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 50,
                child: ElevatedButton(
                  child: Text('Continuar'),
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ConteudoCriado()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
