import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSecond extends StatelessWidget {
  const ScreenSecond({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Value of A : " + (Get.parameters["a"] ?? "NA")),
            Text("Value of B : " + (Get.parameters["b"] ?? "NA")),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/third');
                },
                child: Text("Navigate to Third")),
          ],
        ),
      ),
    );
  }
}
