import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyMapScreen(title: 'flutter demo home page'),
    );
  }
}
class MyMapScreen extends StatefulWidget{

MyMapScreen({Key? key, required this.title}): super(key: key);

final String title;
  @override
  _MyMapScreenState createState() => _MyMapScreenState();

}

class _MyMapScreenState extends State <MyMapScreen>{

final CameraPosition _initialPosition = CameraPosition(target: LatLng(22.698724769019414, 75.86810204358798));
late GoogleMapController _controller;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType: MapType.normal,
        onMapCreated: (controller){
          setState(() {
            _controller = controller;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.zoom_out),
      ),
    );
  }
}