import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
          child: Center(
          child: RaisedButton(
            child: Text("Go Back"),
             onPressed:(){
               Navigator.pushNamed(context, "/");
             },

          ),

          ),
    );
  }
}