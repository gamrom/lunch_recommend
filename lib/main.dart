import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '점메추',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '스몰빅 점메추'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var menuList = ["햄버거", "파스타", "고기", "덮밥"];

  var _menu = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('오늘의 점심 메뉴 추천'),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: OutlinedButton(
                onPressed: () => {
                  setState(
                    () {
                      _menu = menuList[Random().nextInt(menuList.length)];
                    },
                  )
                },
                child: const Text("추천 받기"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Text('$_menu'),
            )
          ],
        ),
      ),
    );
  }
}
