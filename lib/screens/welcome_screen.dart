import 'package:flutter/material.dart';

import '../components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final Color brightRed = const Color(0xFFDC0000);
  final Color darkRed = const Color(0xFF850000);
  final Color wheat = const Color(0xFFFFDB89);
  final Color lightWheat = const Color(0xFFFFF6C3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFDD3333),
      backgroundColor: darkRed,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 250,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              buttonColor: wheat,
              textColor: darkRed,
              title: 'Log In',
              onPressed: () {
                //Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              buttonColor: lightWheat,
              textColor: darkRed,
              title: 'Register',
              onPressed: () {
                //Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
          ],
        ),
      )
    );
  }
}
