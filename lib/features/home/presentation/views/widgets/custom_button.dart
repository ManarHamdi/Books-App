import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.backGround, required this.textColor,
    required this.buttonTitle,  required this.borderStyle}) : super(key: key);
  final Color backGround;
  final Color textColor;
  final String buttonTitle;
  final MaterialStateProperty<OutlinedBorder?> borderStyle;
  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(

      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(backGround)
          ,shape: borderStyle
      ),
      onPressed: () {  },
      child: Text(buttonTitle,style: TextStyle(color:textColor )),

    );
  }
}
