import 'package:get/get_state_manager/get_state_manager.dart';

class FlappyBirdViewModel extends GetxController {
  static const double gravity = 2.0;
  double birdYAxis = 0.0;
  double time = 0.0;
  double height = 0.0;
  double initialHeight = 0.0;
  bool gameStarted = false;
  bool isGameOver = false;
  double barrierWidth = 50.0;
  double barrierHeight = 150.0;
  List<Barrier> barriers = [];
  int score = 0;
  @override
  void onInit() {
    super.onInit();
    resetState();
  }

  void resetState() {
    birdYAxis = 0.0;
    time = 0.0;
    height = 0.0;
    initialHeight = 0.0;
    gameStarted = false;
    isGameOver = false;
    score = 0;
    barriers = [];
  }
}

class Barrier {
  final double x;
  final double y;
  Barrier(this.x, this.y);
}
