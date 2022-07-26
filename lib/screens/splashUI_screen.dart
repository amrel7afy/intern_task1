import 'dart:async';

import 'package:flutter/material.dart';
import 'package:job_project/screens/signin_screen.dart';

class Splash extends StatefulWidget
{
  const Splash({Key key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const SignInScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Center(
        child:
        Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/img.png'))
          ),
        ),
      ),
    );
  }
}
