import 'package:flutter/material.dart';

enum PrincessSide { left, right }

class Princess extends StatelessWidget {
  final double height;
  final PrincessSide side;
  const Princess({
    Key? key,
    this.height = 38,
    this.side = PrincessSide.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String path;

    switch (side) {
      case PrincessSide.left:
        path = "assets/sprites/princess/princessLeft.png";
        break;
      case PrincessSide.right:
        path = "assets/sprites/princess/princessRight.png";
        break;
      default:
        path = "assets/sprites/princess/princessRight.png";
        break;
    }

    return Image.asset(path, height: height);
  }
}
