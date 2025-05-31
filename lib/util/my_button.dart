import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final String buttonName;
  final VoidCallback onPressed;
  final Color buttonColor;
  final TextStyle? textStyle;

  const MyButton ({
  super.key, 
  required this.buttonName, 
  required this.onPressed , 
  required this.buttonColor,
  this.textStyle,
  });
  
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: buttonColor,
      child: Text(
        buttonName,
        style: textStyle?? TextStyle(color:Colors.white),
      ),

      );
  }
}