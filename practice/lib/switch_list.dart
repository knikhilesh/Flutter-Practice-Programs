import 'package:flutter/material.dart';

class ListSwitchDemo1 extends StatelessWidget{

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

        ),
        body: MyListSwitchDemo(),
      ),
    );
  }
}

class MyListSwitchDemo extends StatefulWidget {

  @override
  _MyListSwitchState createState() => _MyListSwitchState();
}

class _MyListSwitchState extends State<MyListSwitchDemo> {
  var selectedItem;

  bool isSwitched = false;
  bool selectValue = false;

  List<ListSwitchModel> listSwitchModel = ListSwitchModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title:  Text(
          'SwitchTileList Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(

        children: [
          Padding(
              padding: EdgeInsets.all(20),
            child: Text('Selected Title : ${selectedItem}' + ', ' + ' Selected Title value: ${selectValue}'),
          ),

          Expanded(
            child: ListView.builder(

                shrinkWrap: true,

                itemCount: listSwitchModel.length,

                itemBuilder: (BuildContext context, int index) {


                  return Card(

                    child: Container(

                      padding: EdgeInsets.all(10.0),

                      child: Column(

                        children: <Widget>[

                          SwitchListTile(
                            title: Text(listSwitchModel[index].title),
                            value: listSwitchModel[index].isCheck,
                            onChanged: (bool value) {
                              setState(() {
                                listSwitchModel[index].isCheck = value;
                                if(listSwitchModel[index].isCheck) {
                                  selectedItem = listSwitchModel[index].title;
                                  selectValue = listSwitchModel[index].isCheck;
                                }
                                else{
                                  selectedItem = '';
                                  selectValue = listSwitchModel[index].isCheck;
                                }
                              }
                              );
                            },
                            secondary: const Icon(Icons.alarm),
                            tileColor: Colors.orangeAccent,
                            subtitle: Text('This is subtitle'),
                            selectedTileColor: Colors.cyan,
                            hoverColor: Colors.pink,
                          ),
                          //Text('${listSwitchModel[index].isCheck}'+' ${selectedItem}'),
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }

  void itemChange(bool val, int index) {

    setState(() {
      listSwitchModel[index].isCheck = val;
    });

  }
}
class ListSwitchModel {
  int userId;
  String title;
  bool isCheck;

  ListSwitchModel({required this.userId, required this.title, required this.isCheck});

  static List<ListSwitchModel> getUsers() {

    return <ListSwitchModel>[

      ListSwitchModel(
          userId: 1,
          title: "Android",
          isCheck: false),
      ListSwitchModel(
          userId: 2,
          title: "Flutter",
          isCheck: false),
      ListSwitchModel(
          userId: 3,
          title: "IOS",
          isCheck: false),
      ListSwitchModel(
          userId: 4,
          title: "PHP",
          isCheck: false),
      ListSwitchModel(
          userId: 5,
          title: "Node",
          isCheck: false),
      ListSwitchModel(
          userId: 6,
          title: "Java Script",
          isCheck: false),
      ListSwitchModel(
          userId: 7,
          title: "C",
          isCheck: false),
      ListSwitchModel(
          userId: 8,
          title: "C++",
          isCheck: false),
      ListSwitchModel(
          userId: 9,
          title: "React",
          isCheck: false),
      ListSwitchModel(
          userId: 10,
          title: "Ruby",
          isCheck: false),
      ListSwitchModel(
          userId: 11,
          title: ".Net",
          isCheck: false),
      ListSwitchModel(
          userId: 12,
          title: "Cobol",
          isCheck: false),
    ];
  }
}