import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThird extends StatelessWidget {
  const ScreenThird({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back")),
          ],
        ),
      ),
    );
  }
}
