import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
