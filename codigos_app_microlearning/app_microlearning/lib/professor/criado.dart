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
import 'campos_criar_microconteudo.dart';

class ConteudoCriado extends StatefulWidget {
  @override
  _ConteudoCriadoState createState() => _ConteudoCriadoState();
}

class _ConteudoCriadoState extends State<ConteudoCriado> {
  PickedFile? pickedFile;

  List<ParseObject> results = <ParseObject>[];
  double selectedDistance = 3000;
  final TextEditingController _controladorDisciplina = TextEditingController();
  final TextEditingController _controladorTitulo = TextEditingController();
  final TextEditingController _controladorSubtitulo = TextEditingController();
  final TextEditingController _controladorDescricao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Microconteudo"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[ 
              Container(
                      height: 50,
                      child: ElevatedButton(
                        child: Text('Display File'),
                        style: ElevatedButton.styleFrom(primary: Colors.blue),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DisplayPage()),
                          );
                        },
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                      height: 50,
                      child: ElevatedButton(
                        child: Text('Salvar'),
                        onPressed: () {
                          final String disciplina = _controladorDisciplina.text;
                          final String titulo = _controladorTitulo.text;
                          final String subtitulo = (_controladorSubtitulo.text);
                          final String descricao = _controladorDescricao.text;

                          final Microconteudo microconteudoNovo = Microconteudo(
                              disciplina, titulo, subtitulo, descricao);
                          saveConteudo(
                              disciplina, titulo, subtitulo, descricao);
                          //print(microconteudoNovo);
                        },
                      )),
                  Expanded(
                      child: FutureBuilder<List<ParseObject>>(
                          future: getConteudo(),
                          builder: (context, snapshot) {
                            switch (snapshot.connectionState) {
                              case ConnectionState.none:
                              case ConnectionState.waiting:
                                return Center(
                                  child: Container(
                                      width: 100,
                                      height: 100,
                                      child: CircularProgressIndicator()),
                                );
                              default:
                                if (snapshot.hasError) {
                                  return Center(
                                    child: Text("Error..."),
                                  );
                                }
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: Text("No Data..."),
                                  );
                                } else {
                                  return ListView.builder(
                                      padding: EdgeInsets.only(top: 10.0),
                                      itemCount: snapshot.data!.length,
                                      itemBuilder: (context, index) {
                                        //*************************************
                                        //Get Parse Object Values
                                        final varConteudo =
                                            snapshot.data![index];
                                        final varDisciplina = varConteudo
                                            .get<String>('Disciplina')!;
                                        final varTitulo =
                                            varConteudo.get<String>('Titulo')!;
                                        final varSubtitulo = varConteudo
                                            .get<String>('Subtitulo')!;
                                        final varDescricao = varConteudo
                                            .get<String>('Descricao')!;
                                        //final varDone =
                                        //varConteudo.get<bool>('done')!;
                                        //*************************************
                                        //Usando este código, podemos acessar os valores do nosso ParseObject usando o getmétodo.
                                        //Usamos o getmétodo para recuperar o title(string) e done(bool).
                                        //*************************************
                                        //Get Parse Object Values
                                        // final varTodo = snapshot.data![index];
                                        //final varTitle = '';
                                        //final varDone = false;
                                        //*************************************

                                        return ListTile(
                                          title: Text(varTitulo),
                                          leading: CircleAvatar(
                                            /*child: Icon(varDone
                                                ? Icons.check
                                                : Icons.error),*/
                                            /* backgroundColor: varDone
                                                ? Colors.green
                                                : Colors.blue,*/
                                            foregroundColor: Colors.white,
                                          ),
                                          trailing: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              /*Checkbox(
                                                  value: varDone,
                                                  onChanged: (value) async {
                                                    await updateConteudo(
                                                        varConteudo.objectId!,
                                                        value!);
                                                    setState(() {
                                                      //Refresh UI
                                                    });
                                                  }),*/
                                              /*IconButton(
                                                icon: Icon(
                                                  Icons.delete,
                                                  color: Colors.blue,
                                                ),
                                                onPressed: () async {
                                                  await deleteConteudo(
                                                      varConteudo.objectId!);
                                                  setState(() {
                                                    final snackBar = SnackBar(
                                                      content:
                                                          Text("Todo deleted!"),
                                                      duration:
                                                          Duration(seconds: 2),
                                                    );
                                                    ScaffoldMessenger.of(
                                                        context)
                                                      ..removeCurrentSnackBar()
                                                      ..showSnackBar(snackBar);
                                                  });
                                                },
                                              ),*/
                            
             ] ),
                                        );
                                      });
                                }
                            }
                          }))
    ])
    )));       
  }

  /*void setState(Null Function() param0) {
    setState(() {
      _controladorDisciplina.clear();
      _controladorTitulo.clear();
      _controladorSubtitulo.clear();
      _controladorDescricao.clear();
    });
  }*/
}

class Microconteudo {
  final String disciplina;
  final String titulo;
  final String subtitulo;
  final String descricao;

  Microconteudo(
    this.disciplina,
    this.titulo,
    this.subtitulo,
    this.descricao,
  );
  @override
  String toString() {
    return 'Microconteudo{disciplina: $disciplina, titulo: $titulo, subtitulo: $subtitulo, descricao: $descricao}';
  }
}

Future<void> saveConteudo(disciplina, titulo, subtitulo, descricao) async {
  final conteudo = ParseObject('Conteudo')
    ..set('Disciplina', disciplina)
    ..set('Titulo', titulo)
    ..set('Subtitulo', subtitulo)
    ..set('Descricao', descricao);
  //..set('done', false);
  await conteudo.save();

  //await Future.delayed(Duration(seconds: 1), () {});
}

Future<List<ParseObject>> getConteudo() async {
  QueryBuilder<ParseObject> queryConteudo =
      QueryBuilder<ParseObject>(ParseObject('Conteudo'));
  final ParseResponse apiResponse = await queryConteudo.query();
  if (apiResponse.success && apiResponse.results != null) {
    return apiResponse.results as List<ParseObject>;
  } else {
    return [];
  }

  //await Future.delayed(Duration(seconds: 2), () {});
  // return []; //pesquisar como retornar o objeto ToDo.
}

Future<void> updateConteudo(
  String id,
  /*bool done*/
) async {
  var conteudo = ParseObject(
      'Conteudo'); //criando nova instancia da classe ParseTodo com o comando "ParseObjct('Todo)""
  conteudo.objectId =
      id; //Usando a propriedade objectId para definir objectid de ParsObject que deve ser removido
  //conteudo.set('done',
  //done); //Usando a função set para modificar os parâmetros de done da tarefa
  await conteudo
      .save(); //chamando a função Save, que enviará as alterações no task seu banco de dados no Parse Dashboard.

  //await Future.delayed(Duration(seconds: 1), () {});
}

Future<void> deleteConteudo(String id) async {
  var conteudo = ParseObject('Conteudo');
  conteudo.objectId = id;
  await conteudo
      .delete(); //função delete remove a tarefa do seu banco de dados no Parse Dashboard.

  //await Future.delayed(Duration(seconds: 1), () {});
}
