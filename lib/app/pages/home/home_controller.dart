import 'dart:async';

import 'package:kong_fteam/app/core/components/characters/mario/mario.dart';

class HomeController {
  HomeController() {
    x = initialX;
    y = initialY;
    marioPos = MarioPos.right;
  }

  double gravity = 0;
  final singleWALK = .02;
  late double jumpHeight;

  double initialX = -1;
  double initialY = .71;

  late double x;
  late double y;

  late MarioPos marioPos;

  ///
  /// [Need to consider work with percent values !!!]
  ///
  /// For vertical moviments the [Offset limit] goes from [-1 ... 1]
  /// The moviment to [dy] negative way takes the object {higher}
  ///
  /// Exemple:
  ///
  /// `final size = MediaQuery.of(context).size` /// takes screen dimensions
  ///
  /// `actualPosition = (size.height * .5, size.width * .5)` {Screen middle}
  /// Calculating [dy = actualPosition - movimentY] our object gonna {higher}
  /// The oposite way happen as the same: [dy = actualPosition + movimentY] taker the object futher {down}
  ///
  ///
  /// We can consider that the same happens at horizontal moviments, that known is the same [Offset limit]
  /// as [dx] goes from [-1 ... 1]
  ///
  /// So:
  /// `acualPosition = (size.height * .5, size.width * .5)`
  /// Calculating [dx = actualPosition + movimentX] goes to {right}
  /// then [dx = actualPosition - movimentX] goes to {left}
  ///

  moveLeft() {
    if (x >= -1) {
      ///
      /// Screen limit [dx] offset for left side: `-1`
      ///
      marioPos = MarioPos.left;
      x -= singleWALK;
    }
  }

  moveRight() {
    if (x <= 1) {
      ///
      /// Screen limit [dx] offset for right side: `1`
      ///
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

  ///
  /// Tutorial at [https://www.youtube.com/watch?v=Q0RTaOkFxWM]
  ///

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
