import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:project_wall/sample_model.dart';
import 'dart:io';

String url = 'https://jsonplaceholder.typicode.com/posts';

Future<Welcome> getWelcome() async{
  final response = await http.get('$url/1');
  return welcomeFromJson(response.body);
}
