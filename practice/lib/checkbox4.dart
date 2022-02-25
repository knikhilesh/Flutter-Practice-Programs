import 'package:flutter/material.dart';

class CheckBoxDemo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     title: 'Flutter checkbox Demo',
     theme: ThemeData(
       primarySwatch: Colors.indigo,
       visualDensity: VisualDensity.adaptivePlatformDensity,
     ),
     home: HomePage(),
     debugShowCheckedModeBanner: false,
   );
  }
}

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State <HomePage>{
final allChecked = CheckBoxModel(title: 'All Checked', value: false);
final checkBoxList = [
  CheckBoxModel(title: 'CheckBox1'),
  CheckBoxModel(title: 'CheckBox2'),
  CheckBoxModel(title: 'checkBox 3'),
];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SafeArea(
     child: Scaffold(
       appBar: AppBar(
         title: Text('Checked Single and Multiple'),
       ),
       body: ListView(
         children: [
          ListTile(
            onTap: () =>  onAllClicked(allChecked),
            leading: Checkbox(
              value: allChecked.value,
              onChanged: (value) => onAllClicked(allChecked),
            ),
            title: Text(allChecked.title, style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),
          ),
           Divider(),
           ...checkBoxList.map((Item) => ListTile(
             onTap: () =>  onItemClicked(Item),
             leading: Checkbox(
                 value: Item.value,
                 onChanged: (value) => onItemClicked(Item)
             ),
             title: Text(Item.title, style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),),
           ),).toList(),
         ],
       ),
     ),
   );
  }
  onAllClicked(CheckBoxModel ckbItem){
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      checkBoxList.forEach((element) {
       print('$element.value');
        element.value = newValue;
      });
    });
  }
  onItemClicked(CheckBoxModel ckbItem){
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;

      if(!newValue){
        allChecked.value = false;
        print('$newValue');
      }
      else{
        final allListChecked = checkBoxList.every((element) => element.value);
        allChecked.value = allListChecked;
      }
    });
  }
}
class CheckBoxModel{
  late String title;
  late bool value;
  CheckBoxModel(
  {required this.title, this.value = false }
      );
}
