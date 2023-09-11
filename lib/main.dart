import 'package:flutter/material.dart';
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

        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
 
      ),
      routes: {
        '/WebView':(context) => const WebViewContainer()
      },
      home: const HomePage(),
    );
  }
}

