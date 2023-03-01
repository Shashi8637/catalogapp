import 'package:catalogapp/widget/drawer.dart';
import 'package:flutter/material.dart';
class home_page extends StatelessWidget {
  home_page({Key? key}) : super(key: key);
  int days = 30;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),

      drawer: MyDrawer(),
    );
  }
}
