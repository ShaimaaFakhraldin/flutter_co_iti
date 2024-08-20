import 'package:flutter/material.dart';

// only build one time
class StatelessLifeCycleExample   extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return  Container(
        margin:  EdgeInsets.only(top:  100),
        child:
        Text("hi from state less ui "  ,style: TextStyle (fontSize: 25),));
  }
}