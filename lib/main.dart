import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_wall/service.dart';

import 'sample_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  List<int> pages=List.generate(5, (index) => index,growable: true);
  @override
  String title="XD";
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: FutureBuilder<Welcome>(
      future: getWelcome(),
      builder: (context,title){
        return Text('${title}');
      },
    ));

//    SafeArea(
//      child: PageView.builder(
//        itemCount: pages.length,
//      itemBuilder: (context,index){
//          return Container(
//            height: double.infinity,
//            width: double.minPositive,
//            color: randomColor,
//            margin: const EdgeInsets.all(5),
//          );
      //},
    //)
   // )
   // );
  }

  Color get randomColor=>
      Color((Random().nextDouble()*0xFFFFFF).toInt()<<0).withOpacity(1);
}
class PageScrollPhysics extends ScrollPhysics{
  const PageScrollPhysics({ScrollPhysics parent}):super(parent:parent);
  PageScrollPhysics apply(ScrollPhysics ancestor){
    return PageScrollPhysics(parent: buildParent(ancestor));
  }
}

