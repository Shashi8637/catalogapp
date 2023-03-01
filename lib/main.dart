import 'package:catalogapp/pages/home_page.dart';
import 'package:catalogapp/pages/login_page.dart';
import 'package:catalogapp/utills/routs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: MyRoutes.loginRoutes,
      routes:{
        "/": (context) => login_page(),
        MyRoutes.homeRoutes: (context) => home_page(),
        MyRoutes.loginRoutes:(context) => login_page(),
      } ,
    );
  }
}
