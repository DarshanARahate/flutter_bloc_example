import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/getxexamples/ex1/Screen4.dart';
import 'package:get/get.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.off(Screen4());
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
