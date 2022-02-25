import 'package:flutter/material.dart';

class GridSwitch1 extends StatelessWidget{

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Checkbox Demo'),
        ),
        body: MyGridSwitchDemo(),
      ),
    );

  }
}

class MyGridSwitchDemo extends StatefulWidget {
  @override
  _MyGridSwitchState createState() => _MyGridSwitchState();
}

class _MyGridSwitchState extends State<MyGridSwitchDemo> {
  var selectedItem;
  bool valueOfSwitch = false;

  List<GridSwitchModel> gridSwitchModel = GridSwitchModel.getUsers();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title:  Text(
          'CheckBox ListTile Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [

          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
                'Selected Option : ${selectedItem}' + ', ' + ' Value of Switch : ${valueOfSwitch}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
          ),

          Expanded(

            child: GridView.builder(

                shrinkWrap: true,


                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,

                ),
                itemCount: 12,

                itemBuilder: (BuildContext context, int index) {


                  return Card(


                    elevation: 20,

                    color: Colors.orange,

                    child: Container(

                      padding: EdgeInsets.all(10.0),

                      child: Column(

                        children: <Widget>[

                          SwitchListTile(

                            title: Text(gridSwitchModel[index].title),

                            tileColor: Colors.greenAccent,

                            activeColor: Colors.red,
                            inactiveThumbColor: Colors.indigo,
                            inactiveTrackColor: Colors.pinkAccent,
                            controlAffinity: ListTileControlAffinity.platform,
                            hoverColor: Colors.cyan,
                            contentPadding: EdgeInsets.all(5),

                            value: gridSwitchModel[index].isCheck,
                            onChanged: (bool value) {
                              setState(() {
                                gridSwitchModel[index].isCheck = value;
                                if(gridSwitchModel[index].isCheck) {
                                  selectedItem = gridSwitchModel[index].title;
                                  valueOfSwitch = gridSwitchModel[index].isCheck;

                                }
                                else{
                                  selectedItem = '';
                                  valueOfSwitch = gridSwitchModel[index].isCheck;
                                }
                              });
                            },
                          ),
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
}

class GridSwitchModel {
  int userId;
  String title;
  bool isCheck;

  GridSwitchModel({required this.userId, required this.title, required this.isCheck});

  static List<GridSwitchModel> getUsers() {
    return <GridSwitchModel>[

      GridSwitchModel(
          userId: 1,
          title: "Android",
          isCheck: false),
      GridSwitchModel(
          userId: 2,
          title: "Flutter",
          isCheck: false),
      GridSwitchModel(
          userId: 3,
          title: "IOS",
          isCheck: false),
      GridSwitchModel(
          userId: 4,
          title: "PHP",
          isCheck: false),
      GridSwitchModel(
          userId: 5,
          title: "Node",
          isCheck: false),
      GridSwitchModel(
          userId: 6,
          title: "c#",
          isCheck: false),
      GridSwitchModel(
          userId: 7,
          title: "C",
          isCheck: false),
      GridSwitchModel(
          userId: 8,
          title: "C++",
          isCheck: false),
      GridSwitchModel(
          userId: 9,
          title: "React",
          isCheck: false),
      GridSwitchModel(
          userId: 10,
          title: "Ruby",
          isCheck: false),
      GridSwitchModel(
          userId: 11,
          title: ".Net",
          isCheck: false),
      GridSwitchModel(
          userId: 12,
          title: "Cobol",
          isCheck: false),
    ];
  }
}