import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart';

class DisplayPage extends StatefulWidget {
  @override
  _DisplayPageState createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display Gallery"),
      ),
      body: FutureBuilder<List<ParseObject>>(
          future: getGalleryList(),
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
                } else {
                  return ListView.builder(
                      padding: const EdgeInsets.only(top: 8),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        //Web/Mobile/Desktop
                        ParseFileBase? varFile =
                            snapshot.data![index].get<ParseFileBase>('file');

                        //Only iOS/Android/Desktop
                        /*
                        ParseFile? varFile =
                            snapshot.data![index].get<ParseFile>('file');
                        */
                        return Image.network(
                          varFile!.url!,
                          width: 200,
                          height: 200,
                          fit: BoxFit.fitHeight,
                        );
                      });
                }
            }
          }),
    );
  }

  Future<List<ParseObject>> getGalleryList() async {
    QueryBuilder<ParseObject> queryPublisher =
        QueryBuilder<ParseObject>(ParseObject('Gallery'))
          ..orderByAscending('createdAt');
    final ParseResponse apiResponse = await queryPublisher.query();

    if (apiResponse.success && apiResponse.results != null) {
      return apiResponse.results as List<ParseObject>;
    } else {
      return [];
    }
  }
}



