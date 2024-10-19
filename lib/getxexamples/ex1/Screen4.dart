import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                color: Colors.indigo,
                width: 100,
                height: 100,
              ),
            ),
            Text('Navigate to previous page')
          ],
        ),
      ),
    );
  }
}
