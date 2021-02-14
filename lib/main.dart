import 'package:flutter/material.dart';
import './screens/products_page.dart';
import './screens/signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber[300],
      ),
      home: SignUpPage(),
      routes: {
        SignUpPage.id: (context) => SignUpPage(),
        ProductPage.id: (context) => ProductPage(),
      },
    );
  }
}
