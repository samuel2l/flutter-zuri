import 'package:flutter/material.dart';
import 'package:zurifirstprj/edit.dart';
import 'package:zurifirstprj/home.dart';

import 'package:zurifirstprj/webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // material app or cupertino app is the design mtd we normally use in designing flutter apps
      //material app allows us to route
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 1, 3, 59)),
        useMaterial3: true,
      ),
      routes: {
        '/WebView': (context) => const WebViewContainer(),
      },
      home: HomePage(
        name: 'Samuel Adams',
        slackName: 'Sam Adams',
        bio:
            ' I am a student University of Ghana and a member of the mobile track. I aim to become an amazing flutter developer in flutter.',
        mail: 'sama29571@gmail.com',
      ),
    );
  }
}
