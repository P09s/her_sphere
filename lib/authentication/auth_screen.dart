import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:her_sphere/Screens/home_screen.dart';
import 'package:her_sphere/Utils/utils.dart';
import 'package:her_sphere/authentication/login_screen.dart';
import 'package:her_sphere/authentication/sign_in_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  bool _isShowSignUp = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  void animationSetUp() {
    _animationController =
        AnimationController(vsync: this, duration: defaultDuration);
    _animation = Tween<double>(begin: 0, end: 90).animate(_animationController);
  }

  void update() {
    setState(() {
      _isShowSignUp = !_isShowSignUp;
    });
    _isShowSignUp
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationSetUp();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedBuilder(
          animation: _animationController,
          builder: (context, _) {
            return Stack(
              children: [
                AnimatedPositioned(
                  left: _isShowSignUp ? -_size.width * 0.76 : 0,
                  width: _size.width * 0.88,
                  height: _size.height,
                  duration: defaultDuration,
                  child: Container(
                    color: login_bg,
                    child: const LoginForm(),
                  ),
                ),

                AnimatedPositioned(
                  left: _isShowSignUp ? _size.width * 0.12 : _size.width * 0.88,
                  width: _size.width * 0.88,
                  height: _size.height,
                  duration: defaultDuration,
                  child: Container(
                    color: CupertinoColors.systemIndigo,
                    child: const SignUpForm(),
                  ),
                ),

                AnimatedPositioned(
                  top: _size.height * 0.1,
                  left: 0,
                  right:
                      _isShowSignUp ? -_size.width * 0.06 : _size.width * 0.06,
                  duration: defaultDuration,
                  child: CircleAvatar(
                    radius: 35,
                    child: AnimatedSwitcher(
                      duration: defaultDuration,
                      child: _isShowSignUp
                          ? SvgPicture.asset('assets/img/aj2.svg')
                          : SvgPicture.asset('assets/img/aj.svg'),
                    ),
                  ),
                ),

                // Positioned(
                //   bottom: _size.height*0.1,
                //   width: _size.width,
                //   right: _size.width*0.06,
                //   child: ,),

                //login Animation
                AnimatedPositioned(
                    left: _isShowSignUp ? 0 : _size.width * 0.44 - 80,
                    bottom: _isShowSignUp
                        ? _size.height / 2 - 80
                        : _size.height * 0.3,
                    duration: defaultDuration,
                    child: DefaultTextStyle(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: _isShowSignUp ? Colors.white : Colors.pink,
                          fontSize: _isShowSignUp ? 20 : 32,
                          fontWeight: FontWeight.bold),
                      child: Transform.rotate(
                        angle: -_animation.value * pi / 180,
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {
                            if (_isShowSignUp) {
                              update();
                            } else {
                              //log in
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: _size.width * 0.03),
                            width: 160,
                            child: const Text(
                              "LOG IN",
                            ),
                          ),
                        ),
                      ),
                    )),

                //signUp Animation
                AnimatedPositioned(
                    right: _isShowSignUp ? _size.width * 0.44 - 80 : 0,
                    bottom: !_isShowSignUp
                        ? _size.height / 2 - 80
                        : _size.height * 0.3,
                    duration: defaultDuration,
                    child: DefaultTextStyle(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: _isShowSignUp ? Colors.white : Colors.white70,
                          fontSize: !_isShowSignUp ? 20 : 32,
                          fontWeight: FontWeight.bold),
                      child: Transform.rotate(
                        angle: (90 - _animation.value) * pi / 180,
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            if (_isShowSignUp) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                            } else {
                              update();
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: _size.width * 0.03),
                            width: 160,
                            child: const Text(
                              "SIGN UP",
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
            );
          }),
    );
  }
}
