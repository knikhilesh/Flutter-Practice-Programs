import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class AnimationDemo2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAnimationPage1(),
    );
  }
}

class MyAnimationPage1 extends StatefulWidget{

  _MyAnimationPageState createState() => _MyAnimationPageState();

}

class _MyAnimationPageState extends State <MyAnimationPage1>  with SingleTickerProviderStateMixin {

  late Animation<double> animation ;
  late AnimationController animationController;

  @override
  void initState(){
    super.initState();

    animationController = AnimationController(duration: const Duration(seconds: 30), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    animation.addListener(() {
      setState(() {
        print(animation.value.toString());
      });
    });

    animation.addStatusListener((status) {
      if(status == AnimationStatus.dismissed){
        animationController.reverse();
      }
      else if(status == AnimationStatus.dismissed){

        animationController.forward();
      }
    });
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: AnimatedLogo(
          animation: animation,
        )
    );
  }
}
class AnimatedLogo extends AnimatedWidget {
  final Tween<double> _sizeAnimation = Tween<double> (begin: 0.0, end: 500.0);
  AnimatedLogo({Key? key, required Animation animation}):super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Transform.scale(
      scale: _sizeAnimation.evaluate(animation),
      child: FlutterLogo(),
    );
  }
}