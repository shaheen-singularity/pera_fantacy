import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sign_in_button/sign_in_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Image.asset("assets/pera_logo.png", scale: 3),
              ),
            ),
            Gap(100),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                TypewriterAnimatedText('BE ORGANISED TO WORK',textStyle: TextStyle(fontSize: 24.0,color: Colors.black,fontFamily: 'Horizon',),speed: Duration(milliseconds: 100)),
                ColorizeAnimatedText(
                  'BE ORGANISED TO WORK',
                  textStyle: TextStyle(fontSize: 24.0),
                  colors: colorizeColors,
                ),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
            Gap(150),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: SignInButton(
                Buttons.google,
                text: "Sign in with Google",
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                onPressed: () {},
              ),
            ),


          ],
        ),
      ),
    );
  }
}
