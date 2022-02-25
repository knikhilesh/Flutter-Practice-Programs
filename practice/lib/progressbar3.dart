import 'package:flutter/material.dart';
import 'dart:math' as math;

class ProgressBarDemo3 extends StatelessWidget{
  const ProgressBarDemo3({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.white60,
       appBar: AppBar(
         title: Text('ProgressBar Arc Demo'),
       ),
       body: Center(
         child: Circular_arc(),
       ),
     ),
   );
  }
}

final Gradient gradient = new LinearGradient(
  colors: <Color>[
  Colors.greenAccent.withOpacity(1.0),
    Colors.yellowAccent.withOpacity(1.0),
    Colors.redAccent.withOpacity(1.0),
  ],
  stops: [
    0.0,
    0.5,
    1.0,
  ],
);

class Circular_arc extends StatefulWidget {

  @override
  _Circular_arcState createState() => _Circular_arcState();

}

class _Circular_arcState extends State<Circular_arc> with SingleTickerProviderStateMixin{

  late Animation<double> animation;
  late AnimationController animationController;
  
  @override
  void initState(){
    super.initState();
  var animController = AnimationController(duration: const Duration(seconds: 5), vsync: this);
  final curvedAnimation = CurvedAnimation(parent:animController, curve: Curves.easeInOutCubic);
  animation = Tween<double>(begin: 0.0, end: 6.2).animate(curvedAnimation)..addListener(() {
    setState(() {

    });
  });
  animController.repeat(reverse: false);

  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Container(
    child:
    Stack(
      children: [
        CustomPaint(
          size: Size(300,300),
          painter: ProgressArch(0.0, Colors.black54, true),
        ),
        CustomPaint(
          size: Size(300,300),
          painter: ProgressArch(animation.value, Colors.redAccent, false),
        ),
        Positioned(
            top: 120,
            left: 130,
            child: Text('${(animation.value / 6.2 * 100).round()}%', style: const TextStyle(color: Colors.black, fontSize: 30,),)
        ),
      ],
    ),
  );
  }
}

class ProgressArch extends CustomPainter{
  bool isBackground;
  double arc;
  Color progressColor;

  ProgressArch (this.arc, this.progressColor, this.isBackground);

  @override
  void paint(Canvas canvas, Size size){

    final rect = Rect.fromLTRB(0, 0, 300, 300);
   final startAng = -math.pi;
   final sweepAngle = arc != null? arc : math.pi;
   final userCenter = false;
   final paint = Paint()
   ..strokeCap = StrokeCap.round
    ..color = progressColor
    ..style =PaintingStyle.stroke
    ..strokeWidth = 20;
   if(!isBackground){
    paint.shader = gradient.createShader(rect);
   }
   canvas.drawArc(rect,startAng,sweepAngle,userCenter,paint);

  }


  @override
  bool shouldRepaint(covariant CustomPainter olddelegate){
    return true;
  }

}
