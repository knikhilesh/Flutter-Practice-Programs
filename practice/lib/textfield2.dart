import 'package:flutter/material.dart';

class TextFieldDemo2 extends StatefulWidget{
  _TextFieldState createState() => _TextFieldState();

}
class _TextFieldState extends State <TextFieldDemo2>{
  final _formKey = GlobalKey<FormState>();
  var name = "";
  var password = "";
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text('TextField Input Get'),
     ),
     body: Padding(
       padding: EdgeInsets.all(20),
       child: Column(
         children: <Widget>[
           Padding(
             padding: EdgeInsets.all(20),
             child: TextField(
               controller: nameController,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Enter Name',
                 hintText: 'Enter your name',
               ),
             ),
           ),
           Padding(
             padding: EdgeInsets.all(20),
             child: TextField(
               controller: passwordController,
               obscureText: true,
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Password',
                 hintText: 'Enter Password',
               ),
             ),
           ),
           ElevatedButton(
               onPressed: (){
                 if (_formKey.currentState!.validate()) {
                   setState(() {
                     name = nameController.text;
                     password = passwordController.text;
                   });
                 }
               },
               child: Text('Sign In'),
           ),
           Container(
             child: Text(' Name: $nameController.text \n Password: $passwordController.text'),
           )
         ],
       ),
     ),
   );
  }
}