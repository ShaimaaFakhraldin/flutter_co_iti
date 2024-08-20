import 'package:flutter/material.dart';
// build multible time ( becuoes have set state  so function build colled meny times)
class StateFullLifeCycleExample  extends StatefulWidget{
  @override // only once
  State<StateFullLifeCycleExample> createState() {
    print("createState");
    return myState();
  }

}
class myState extends State<StateFullLifeCycleExample>{

  String myData = "show data";

  @override // only once
  void initState() {
    print("initState");
    super.initState();
  }
  @override // when parent change
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }
  //  change in state
  @override // repeted
  Widget build(BuildContext context) {
    print("build");

    return  Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: (){
          myData = "hi from new data next one";
          setState(() {

          });

      }),
        body:
        Container(
          alignment:Alignment.center,
          child:
          Text(myData  ,style: TextStyle (fontSize: 25),),));
  }
  @override // when this widget change
  void didUpdateWidget(covariant StateFullLifeCycleExample oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }
  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }
  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }


}