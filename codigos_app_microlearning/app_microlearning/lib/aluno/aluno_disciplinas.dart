import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
 
class Aluno_Disciplinas extends StatefulWidget {
  const Aluno_Disciplinas({Key? key}) : super(key: key);
 
  @override
  State<Aluno_Disciplinas> createState() => _Aluno_DisciplinasState();
}
 
class _Aluno_DisciplinasState extends State<Aluno_Disciplinas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Stack(children: <Widget>[
              Container(
                width: 250,
                height: 200,
                // color: Colors.teal[300],
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                child: Center(child: Text("Português")), //("Criar"),),
              ),
            ]),
            Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  // color: Colors.teal[300],
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                  child: Center(
                    child: Text('Matematica'),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  // color: Colors.teal[300],
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                  child: Center(child: Text('Historia')),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  // color: Colors.teal[300],
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                  child: Center(
                    child: Text('Geografia'),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  // color: Colors.teal[300],
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                  child: Center(
                    child: Text('Sociologia'),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  // color: Colors.teal[300],
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                  child: Center(
                    child: Text('Filosofia'),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  // color: Colors.teal[300],
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                  child: Center(child: Text('Biologia')),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  // color: Colors.teal[300],
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                  child: Center(
                    child: Text('Quimica'),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  // color: Colors.teal[300],
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                  child: Center(child: Text('Fisica')),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  // color: Colors.teal[300],
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                  child: Center(
                    child: Text(''),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  width: 250,
                  height: 200,
                  // color: Colors.teal[300],
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://img.cancaonova.com/cnimages/canais/uploads/sites/6/2014/01/formacao_o-que-a-educacao-pode-fazer-pelo-coracao-humano-1-768x576.jpg'))),
                  child: Center(
                    child: Text('vida'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 

