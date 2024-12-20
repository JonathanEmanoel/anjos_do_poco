import 'dart:async';
import 'package:flutter/material.dart';
import '../Constants/Colors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
 void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 1, milliseconds: 500), () {
      Navigator.of(context).pushNamed(
        '/home',
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Image.asset(
                "assets/images/Logo.png",
                width: 300,
                height: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }

@override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
