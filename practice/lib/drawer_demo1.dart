import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DrawersDemo1 extends StatelessWidget {
  final appTitle = 'Flutter Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(child: Text(
          'A drawer is an invisible side screen.',
          style: TextStyle(fontSize: 20.0),
        )
        ),
        drawerEnableOpenDragGesture: false,
        //endDrawerEnableOpenDragGesture: false,
          drawer: Drawer(

            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(

                    //width: MediaQuery.of(context).size.width * 0.85,
                    width: 310,
                    child: UserAccountsDrawerHeader(
                      accountName: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Andrew Anderson     ',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black), ),
                        ],
                      ),
                      accountEmail: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('andrew@gmail.com     ', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                        ],
                      ),
                      
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Card(
                    elevation: 50,
                    color: Colors.deepOrangeAccent,
                    child: ListView(
                        children: [
                          ListTile(
                            title: Text('Livescore'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                              Fluttertoast.showToast(
                                  msg: 'Livescore clicked'
                              );
                            },
                          ),

                          Divider(),

                          ListTile(
                            title: Text('Rankings'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),

                          Divider(),

                          ListTile(
                            title: Text('How it works'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),

                          ListTile(
                            title: Text('Recommeded Tips'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Share to a friend'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text('About us'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Contact us'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Privacy Policy'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Terms & Conditions'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text('Newsletter'),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text("Home"),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text("Settings"),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text("Contact Us"),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),

                          Divider(),
                          ListTile(
                            title: Text("Test data1"),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text("Test data2"),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Divider(),
                          ListTile(
                            title: Text("Log Out"),
                            trailing: Icon(Icons.arrow_forward_ios, size: 15),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ]
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  color: Colors.grey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('@ App Version 11.0.1', style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ],
            ),
          ),


        endDrawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[

              ListTile(
                title: Text('Livescore'),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              Divider(),

              ListTile(
                title: Text('Rankings'),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              Divider(),

              ListTile(
                title: Text('How it works'),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),

              ListTile(
                title: Text('Recommeded Tips'),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('Share to a friend'),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('About us'),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('Contact us'),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('Privacy Policy'),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('Terms & Conditions'),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('Newsletter'),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text("Settings"),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text("Contact Us"),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              Divider(),
              ListTile(
                title: Text("Test data1"),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text("Test data2"),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text("Log Out"),
                trailing: Icon(Icons.arrow_forward_ios, size: 15),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],

          ),

        ),

      ),
    );
  }
}
