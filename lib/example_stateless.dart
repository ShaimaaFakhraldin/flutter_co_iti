// import 'package:flutter/cupertino.dart'; // ios
import 'package:flutter/material.dart';
import 'package:flutter_c_iti/state_full_lifecycle.dart'; // General  & android
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return
        Container(
          alignment:Alignment.center ,
          child :


              InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (_){
                      return  StateFullLifeCycleExample();
                   }));
                 },
                  child :  Container(
                  color :Colors.red,
                  height
                      :200 , width: 200,
                  child : const Text("go main screen")
              ))

        )
    ;
  }
}

class SimpleUi1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container();
  }
}

