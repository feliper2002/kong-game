import 'dart:async';

import 'package:kong_fteam/app/core/components/characters/mario/mario.dart';

class HomeController {
  HomeController() {
    x = initialX;
    y = initialY;
    marioPos = MarioPos.right;
  }

  double gravity = 0;
  double singleWALK = .02;
  late double jumpHeight;

  double initialX = -1;
  double initialY = .71;

  late double x;
  late double y;

  late MarioPos marioPos;

  moveLeft() {
    if (x >= -1) {
      marioPos = MarioPos.left;
      x -= singleWALK;
    }
  }

  moveRight() {
    if (x <= 1) {
      marioPos = MarioPos.right;
      x += singleWALK;
    }
  }

  moveUp() {
    y -= singleWALK;
  }

  moveDown() {
    if (y <= .7) {
      y += singleWALK;
    }
  }

  _preJump() {
    gravity = 0;
    initialY = .71;
    y = initialY;
  }

  jump() async {
    _preJump();
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      gravity += .05;
      jumpHeight = -4.9 * gravity * gravity + 5 * gravity;

      if (initialY - jumpHeight > .71) {
        y = .71;
      } else {
        y = initialY - jumpHeight;
      }
    });
  }
}
