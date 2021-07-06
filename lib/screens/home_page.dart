import 'package:flutter/material.dart';
import 'package:flutter_calculator/components/keyboard_button.dart';
import 'package:flutter_calculator/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum ColorTheme { dark, light }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ColorTheme selectedColorTheme = ColorTheme.dark;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF292D36),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                margin: EdgeInsets.only(top: 32),
                padding: EdgeInsets.symmetric(horizontal: 24),
                width: 164,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      splashRadius: 1,
                      onPressed: () {
                        setState(() {
                          selectedColorTheme = ColorTheme.light;
                        });
                      },
                      icon: ImageIcon(
                        AssetImage('assets/icons/sun.png'),
                        size: 30,
                        color: selectedColorTheme == ColorTheme.light
                            ? kActiveIconColor
                            : kInactiveIconColor,
                      ),
                    ),
                    IconButton(
                      splashRadius: 1,
                      onPressed: () {
                        setState(() {
                          selectedColorTheme = ColorTheme.dark;
                        });
                      },
                      icon: ImageIcon(
                        AssetImage('assets/icons/moon.png'),
                        size: 30,
                        color: selectedColorTheme == ColorTheme.dark
                            ? kActiveIconColor
                            : kInactiveIconColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 90, right: 40, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '308 x 42 =',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    '12.936',
                    style: TextStyle(fontSize: 62, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFF292D36),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        KeyboardButton(text: 'AC', buttonTextColor: 'cyan',),
                        KeyboardButton(text: '+/-', buttonTextColor: 'cyan',),
                        KeyboardButton(icon: FontAwesomeIcons.percent, iconColor: kCyanColor,),
                        KeyboardButton(icon: FontAwesomeIcons.divide, iconColor: kRedColor,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        KeyboardButton(text: '7', buttonTextColor: 'white',),
                        KeyboardButton(text: '8', buttonTextColor: 'white',),
                        KeyboardButton(text: '9', buttonTextColor: 'white',),
                        KeyboardButton(icon: FontAwesomeIcons.times, iconColor: kRedColor,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        KeyboardButton(text: '4', buttonTextColor: 'white',),
                        KeyboardButton(text: '5', buttonTextColor: 'white',),
                        KeyboardButton(text: '6', buttonTextColor: 'white',),
                        KeyboardButton(icon: FontAwesomeIcons.minus, iconColor: kRedColor,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        KeyboardButton(text: '1', buttonTextColor: 'white',),
                        KeyboardButton(text: '2', buttonTextColor: 'white',),
                        KeyboardButton(text: '3', buttonTextColor: 'white',),
                        KeyboardButton(icon: FontAwesomeIcons.plus, iconColor: kRedColor,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        KeyboardButton(icon: FontAwesomeIcons.undo, iconColor: kWhiteColor,),
                        KeyboardButton(text: '0', buttonTextColor: 'white',),
                        KeyboardButton(text: '.', buttonTextColor: 'white',),
                        KeyboardButton(icon: FontAwesomeIcons.equals, iconColor: kRedColor,),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


