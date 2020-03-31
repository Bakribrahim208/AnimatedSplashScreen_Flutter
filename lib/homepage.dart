import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page"),),
      body: Center(
        child: RaisedButton(
          child: Text("Exit",style: TextStyle(color: Colors.white),),
          color: Colors.blue,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
