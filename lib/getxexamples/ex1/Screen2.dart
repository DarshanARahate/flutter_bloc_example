import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/getxexamples/ex1/Screen3.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => Screen3());
              },
              child: Container(
                color: Colors.indigo,
                width: 100,
                height: 100,
              ),
            ),
            Text('Navigate to previous page'),
            InkWell(
              onTap: () {
                Get.back(result: 'This is from Next Page');
                // Get.back();
              },
              child: Container(
                color: Colors.indigo,
                width: 100,
                height: 100,
                child: Text(Get.arguments),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
