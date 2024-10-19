import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenFirst extends StatelessWidget {
  const ScreenFirst({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offNamed('/second?a=1&b=2');
              },
              child: Text("Navigate to second"),
            ),
          ],
        ),
      ),
    );
  }
}
