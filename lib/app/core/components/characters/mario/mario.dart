import 'package:flutter/material.dart';

enum MarioPos {
  //// [Left movement]
  left,
  left1,
  left2,
  //// [Right movement]
  right,
  right1,
  right2,
  //// [Stairs movement]
  stairs,
  stairsLeft,
  stairsRight,
  stairsTop,
}

class Mario extends StatelessWidget {
  final MarioPos pos;
  final double height;
  const Mario({
    Key? key,
    this.pos = MarioPos.right,
    this.height = 23,
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
      case MarioPos.stairs:
        asset = 'assets/sprites/stairs/marioStairs.png';
        break;
      case MarioPos.stairsLeft:
        asset = 'assets/sprites/stairs/marioStairsLeft.png';
        break;
      case MarioPos.stairsRight:
        asset = 'assets/sprites/stairs/marioStairsRight.png';
        break;
      case MarioPos.stairsTop:
        asset = 'assets/sprites/stairs/marioStairsTopstairsTop.png';
        break;
      default:
        asset = 'assets/sprites/walk/marioRight.png';
        break;
    }

    return Image.asset(asset, height: height);
  }
}
