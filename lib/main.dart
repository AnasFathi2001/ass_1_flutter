import 'package:flutter/material.dart';

import 'myWidget.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text("عاصمة فلسطين",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.asset("assets/images/img.jpg"),
            Text("مدينة القدس",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
              ),
            ),
            MyWidget("الأسم","القدس"),
            MyWidget("المساحة","125 كيلو متر"),
            MyWidget("السكان","358000 نسمة"),
            MyWidget("الدولة","فلسطين"),
            MyWidget("أسم الطالب","أنس فتحي محسن"),
          ],
        ),
      ),
    );
  }

}