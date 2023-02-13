//confetti: ^0.6.0
import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
class MyConfettiWidget extends StatefulWidget {
  final Widget child;
  const MyConfettiWidget({Key? key, required this.child}) : super(key: key);
  @override
  State<MyConfettiWidget> createState() => _MyConfettiWidgetState();
}

class _MyConfettiWidgetState extends State<MyConfettiWidget> {
  late ConfettiController controller;
  static final double right=0;
  static final left=pi;
  static final top=-pi/2;
  static final down=pi/2;

  @override
  void initState(){
    super.initState();
    controller=ConfettiController(duration: Duration(seconds: 2)) ;
    controller.play();


  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      widget.child,
      Align(
        alignment:Alignment.topCenter,
          child: ConfettiWidget(confettiController: controller,
          colors: [Colors.red,Colors.white,Colors.orange,Colors.yellow,Colors.purple],

            shouldLoop: true,
            emissionFrequency: 0.9,
            numberOfParticles: 1,
            //blastDirection:down,
            blastDirectionality: BlastDirectionality.explosive,
            gravity: 0.5,
            //maxBlastForce: 2,
            //minBlastForce: 1,
            //particleDrag: 1,
          ),

      ),

    ],);

  }
}
