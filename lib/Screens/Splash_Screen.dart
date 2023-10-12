import 'package:flutter/material.dart';
import 'package:top_10/Screens/LoginScreen.dart';


class SplashScreen extends StatefulWidget {
  static const String screenRoute = 'SplashScreen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 13, 102, 255), Colors.purple],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    "images/top-10.png",
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              const Text(
                "Developer by (Philopater Nabil)",
                style: TextStyle(
                    color: Color.fromARGB(255, 246, 226, 54),
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.name),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
