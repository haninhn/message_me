import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color color;
  final String btnTitle;
  final Function onPressed;
  const Button({Key? key, required this.color, required this.btnTitle, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: color,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        onPressed: ()=> onPressed,
        minWidth: 350,
        height: 42,
        child:
        Text(
            btnTitle,
            style: const TextStyle(color : Colors.white)
        ),
      ),
    );
  }
}
