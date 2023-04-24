import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:her_sphere/authentication/auth_screen.dart';

import '../Utils/utils.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 255, 58, 84),
        child: Column(children: [
          Image.asset('assets/img/welcome.png'),
          SizedBox(
            height: 10.h,
          ),
          Text(
            'Let’s Get '
            'Started',
            style: textTheme.headline1,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
              'Connect with each other while chatting or '
              'calling. Enjoy safe and private texting',
              style: textTheme.subtitle1),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const AuthScreen()));
              },
              style: btnStyle(
                  const Color.fromARGB(255, 19, 143, 120), Colors.white),
              child: const Text('Join Now'),
            ),
          ),
        ]),
      ),
    ));
  }
}
