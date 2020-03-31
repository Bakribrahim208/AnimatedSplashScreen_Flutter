import 'package:flutter/material.dart';
import 'package:fluttersplashscreen/homepage.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> with SingleTickerProviderStateMixin{

  AnimationController animationController;
  Animation<double> animation;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   splashScreen();
    animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 1500));
    animation = Tween<double>(begin:50.0, end: 120.0).animate(animationController);
    animationController.forward().then((value){
      animationController.reverse();
    });

  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            AnimatedBuilder(
              animation: animation,
              child: null,
              builder: (context,child){
                return Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.red[200],
                    radius: animation.value,
                    child: Center(
                      child: Text("Fling",style: TextStyle(color: Colors.white,fontSize: 30.0),),
                    ),
                  ),
                );
              },
            ),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.red[800],
                radius: 60.0,
                child: Center(
                  child: Text("Fling",style: TextStyle(color: Colors.white,fontSize: 30.0),),
                ),
              ),
            ),
          ],
        ),
    );
  }
  void splashScreen(){
    Timer(Duration(seconds: 4),(){
      navigateScreen();
    });
  }

  void navigateScreen(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }

}
