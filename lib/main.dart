import 'dart:io';

import 'package:envio_imagem/professor/home_professor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'professor/envio_imagem.dart';
import 'professor/campos_criar_microconteudo.dart';
import 'professor/home_page_professor.dart';
import 'professor/home_professor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final keyApplicationId = 'XTlGBLgt6opCro6qAzAHs8gZyp7FDVxqCAwsSWdU';
  final keyClientKey = '0I1iTKbDj3uRSfA9OANatDKhIHs7zyb4oFBVjYf0';

  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);

  runApp(MaterialApp(
    title: 'Flutter - Storage File',
    debugShowCheckedModeBanner: false,
    home: HomeProfPage(), //Professor_Home() //MyApp(), //HomePage(),
  ));
}
