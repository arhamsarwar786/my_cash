// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_cash/Utils/constant.dart';
import 'package:my_cash/view/home/home_screen.dart';

import '../controllers/GlobalState.dart';
import 'authentication/register_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  late Animation colorAnimation;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => GlobalState.userDetails != null ? Home() :  RegisterScreen()));
    });
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 150, end: 300).animate(controller);
    colorAnimation =
        ColorTween(begin: kprimayColor, end: primayColor).animate(controller);
    animation.addListener(() {
      setState(() {});
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 8), () {
  //     Navigator.of(context)
  //         .pushReplacement(MaterialPageRoute(builder: (_) => MainPage()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: animation.value,
                width: animation.value,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/myCash.png',
                        ),
                        fit: BoxFit.fitWidth)),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 15),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Text(
              //         "POWERED BY",
              //         style: TextStyle(
              //             fontWeight: FontWeight.w400,
              //             color: Color(0xff00164C),
              //             fontSize: 12),
              //       ),
              //       Container(
              //         height: 30,
              //         width: MediaQuery.of(context).size.width * 0.55,
              //         decoration: BoxDecoration(
              //             image: DecorationImage(
              //           image: AssetImage("assets/dev's statement.png"),
              //           fit: BoxFit.cover,
              //         )),
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}