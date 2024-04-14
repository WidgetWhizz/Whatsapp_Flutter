import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_flappy_bird/view/flappy_bird_view.dart';

void main() {
  runApp(const MyFlappyBird());
}
class MyFlappyBird extends StatelessWidget {
  const MyFlappyBird({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Flappy Bird",
      home: Scaffold(
        body: FlappyBirdView(),
      ));
  }
    
}