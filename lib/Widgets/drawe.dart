import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://images.pexels.com/photos/1382734/pexels-photo-1382734.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
    return Drawer(
        child: ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text("Nirajan Thapa Magar"),
            accountEmail: Text("tnirajan419@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.home,
          ),
          title: Text(
            "Home",
            textScaleFactor: 1.2,
          ),
        ),
         ListTile(
          leading: Icon(
            CupertinoIcons.profile_circled,
          ),
          title: Text(
            "Profie",
            textScaleFactor: 1.2,
          ),
        ),
         ListTile(
          leading: Icon(
            CupertinoIcons.mail,
          ),
          title: Text(
            "Email Me",
            textScaleFactor: 1.2,
          ),
        )
      ],
    ));
  }
}
