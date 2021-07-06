import 'package:flutter/material.dart';
import 'package:flutter_calculator/constants.dart';

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
                            ? kActiveColorTheme
                            : kInactiveColorTheme,
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
                            ? kActiveColorTheme
                            : kInactiveColorTheme,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
