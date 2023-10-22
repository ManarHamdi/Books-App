import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.backGround, required this.textColor,
    required this.buttonTitle,  required this.borderStyle, this.onPressed}) : super(key: key);
  final Color backGround;
  final Color textColor;
  final String buttonTitle;
  final MaterialStateProperty<OutlinedBorder?> borderStyle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(

      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(backGround)
          ,shape: borderStyle
      ),
      onPressed: onPressed,
      child: Text(buttonTitle,style: TextStyle(color:textColor )),

    );
  }
}
