import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RxStateManager extends StatelessWidget {
  RxStateManager({super.key});

  var count = 0.obs;

  @override
  Widget build(context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Obx Example"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "$count",
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    count++;
                  },
                  child: Text("Increment"))
            ],
          ),
        ),
      ),
    );
  }
}
