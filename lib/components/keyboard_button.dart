import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants.dart';

class KeyboardButton extends StatelessWidget {
  KeyboardButton({this.onPress, this.text, this.buttonTextColor, this.icon, this.iconColor});

  final String? text;
  final Function? onPress;
  final String? buttonTextColor;
  final IconData? icon;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {

      },
      child: icon != null ? Icon(icon, color: iconColor,) : Text(text!, style: kButtonTextStyleColors[buttonTextColor!],),
      style: kButtonStyle,
    );
  }
}