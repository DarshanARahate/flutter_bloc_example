import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/getxexamples/ex1/Screen2.dart';
import 'package:get/get.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX UnNamed Routing"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  var a = await Get.to(() => Screen2(),
                      arguments: 'This is from Screen 1');
                  print(a);
                },
                child: Container(
                  color: Colors.purple,
                  width: 100,
                  height: 100,
                  // child: Text(a.arguments),
                ),
              ),
              Text("Navigate to next page"),
            ],
          ),
        ),
      ),
    );
  }
}
