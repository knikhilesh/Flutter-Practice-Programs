import 'package:flutter/material.dart';
import './FirstScreen.dart';
import './SecondScreen.dart';
import './ThirdScreen.dart';
class TabBarDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tabs Demo'),
            bottom: TabBar(

              tabs: [
                Container(
                 width: 80,
                  height: 50,
                  child: Tab(icon: Icon(Icons.contacts), text: "Contacts"),
                ),
                Container(
                  width: 70,
                  height: 50,
                  child: Tab(icon: Icon(Icons.camera_alt), text: "Camera"),
                ),
                Container(
                  width: 80,
                  height: 50,
                  child: Tab(icon: Icon(Icons.account_circle), text: "Profile"),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

