import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textstyle;
  final VoidCallback? callBack;

  CheckButton({
      required this.btnName,
    this.icon,
    this.bgColor=Colors.orange,
    this.textstyle,
    this.callBack});

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(onPressed: (){
     callBack!();
   }, child: Row(
     children: [

     ],
   ));
  }

}