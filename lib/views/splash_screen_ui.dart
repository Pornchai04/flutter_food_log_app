import 'package:flutter/material.dart';
import 'package:flutter_food_log_app/views/show_all_food_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ShowAllFoodUi(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/logo.png',
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Food',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 222, 6),
            ),
          ),
          Text(
            '🍔 🍟 🍕',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 222, 6),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            color: const Color.fromARGB(255, 246, 235, 19),
          ),
        ]),
      ),
    );
  }
}
