import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:note_app/ui/Pages/homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: screenWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/notes assets/background.png"),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(70, 40, 40, 40),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset("assets/notes assets/Group 468@2x.png"),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    "Welcome to Notes",
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Center(
//               child: Image(
//             image: AssetImage('assets/notes assets/Group 468@2x.png'),
//           )),
  // AnimatedSplashScreen(
  //         animationDuration: const Duration(seconds: 1),
  //         backgroundColor: LinearGradient(colors: ),
  //         splashIconSize: 500,
  //         splash: Center(
  //             child: Image(
  //           image: AssetImage('assets/notes assets/Group 468@2x.png'),
  //         )),
  //         nextScreen: HomePage(),
  //         splashTransition: SplashTransition.fadeTransition,
  //         duration: 1000,
  //       ),