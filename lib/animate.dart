import 'package:flutter/material.dart';

class Animate extends StatefulWidget {
  const Animate({super.key});

  @override
  State<Animate> createState() => _AnimateState();
}

class _AnimateState extends State<Animate> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  late Animation<Offset> animation1;
  late Animation<Offset> animation2;
  late Animation<Offset> animation3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween<Offset>(begin: Offset(0, 15), end: Offset(0.5, 7))
        .animate(animationController);
        animation1 = Tween<Offset>(begin: Offset(1, 15), end: Offset(0.5, 7))
        .animate(animationController);
        animation2 = Tween<Offset>(begin: Offset(0, 0), end: Offset(0.5, 7))
        .animate(animationController);
          animation3 = Tween<Offset>(begin: Offset(1, 0), end: Offset(0.5, 7))
        .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SlideTransition(
              position: animation2,
              child: Text(
                'hello world',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )),
          SlideTransition(
              position: animation3,
              child: Text(
                'hello world',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )),
          SlideTransition(
              position: animation1,
              child: Text(
                'hello world',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              )),
              SlideTransition(
              position: animation,
              child: Text(
                'hello world',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ))
        ],
      ),
    );
  }
}
