import 'package:flutter/material.dart';

const Color kBackgroundColor = Color(0xFF22252D);
const Color kInactiveIconColor = Color(0xFF7C7E83);
const Color kActiveIconColor = Color(0xFFFFFFFF);
const Color kCyanColor = Color(0xFF26E8C6);
const Color kRedColor = Color(0xFFEC6666);
const Color kWhiteColor = Colors.white;

const TextStyle kButtonTextStyle =
    TextStyle(color: Color(0xFF26E8C6), fontSize: 26);

const kButtonTextStyleColors = {
  'cyan': TextStyle(color: kCyanColor, fontSize: 26),
  'red': TextStyle(color: kRedColor, fontSize: 26),
  'white': TextStyle(color: kWhiteColor, fontSize: 26),
};

ButtonStyle kButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF272B33)),
    elevation: MaterialStateProperty.all<double>(1),
    shape: MaterialStateProperty.all<
        RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    fixedSize: MaterialStateProperty.all<Size>(Size(70, 70))
);
