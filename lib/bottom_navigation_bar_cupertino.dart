import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home.dart';
import 'profile.dart';
import 'search_puestesito.dart';

class NavigationBarCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            backgroundColor: Colors.white.withAlpha(70),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.indigo),
                //label: "",
                //title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigo),
                //label: "",
                //title: Text("")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo),
                //label: "",
                //title: Text("")
              ),
            ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => Home(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchPuestesito(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => Profile(),
              );
              break;
            default:
              return CupertinoTabView(
                builder: (BuildContext context) => Home(),
              );
          }
        },
      ),
    );
  }
}
