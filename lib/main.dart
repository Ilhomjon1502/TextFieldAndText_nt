import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MyHome();
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  String myText="Boshlang'ich matn";

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child:  Text(
                    myText
                ),
              ),
              Center(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        myText = value;
                        print(value);
                      });

                    },
                    decoration: InputDecoration(hintText: "Matn yozing"),
                  )),
            ] ),
      ),
    );
  }
}

/*
StatelessWidget bunda build faqat bir marta tepadan pastga qatorasiga kodlar ishlaydi
StatefulWidget da esa setState funksiyasi chaqirilganda build qayta ishlaydi. setState funksiya faqat StateFullWidget ichida bor holos, StateLessWidget ichida yo'q
 */