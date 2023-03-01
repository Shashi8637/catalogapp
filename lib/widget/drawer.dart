import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_11342065.htm#query=nature&position=1&from_view=keyword";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero, 
                accountName: Text("shashi singh"),
                accountEmail: Text("shashi863788@gmail.com"),
                currentAccountPicture:Image.network(imageUrl)
                
          ),),
        ],
      ),
    );
  }
}
