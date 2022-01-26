import 'package:flutter/material.dart';

enum MarioPos { up, down, left, left1, left2, right, right1, right2 }

class Mario extends StatelessWidget {
  final MarioPos pos;
  const Mario({
    Key? key,
    this.pos = MarioPos.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String asset;
    switch (pos) {
      case MarioPos.left:
        asset = 'assets/sprites/walk/marioLeft.png';
        break;
      case MarioPos.left1:
        asset = 'assets/sprites/walk/marioLeft1.png';
        break;
      case MarioPos.left2:
        asset = 'assets/sprites/walk/marioLeft2.png';
        break;
      case MarioPos.right:
        asset = 'assets/sprites/walk/marioRight.png';
        break;
      case MarioPos.right1:
        asset = 'assets/sprites/walk/marioRight1.png';
        break;
      case MarioPos.right2:
        asset = 'assets/sprites/walk/marioRight2.png';
        break;
      default:
        asset = 'assets/sprites/walk/marioRight.png';
        break;
    }

    return Image.asset(asset, height: 23);
  }
}
