import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2580),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.pushReplacementNamed(context, "hommyPage");

      super.initState();
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/McDonalds-logo.png",
              width: 160,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: LinearProgressIndicator(
                color: Colors.yellowAccent,
                value: controller.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
