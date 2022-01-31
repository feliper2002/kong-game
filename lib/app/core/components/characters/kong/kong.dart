import 'package:flutter/material.dart';

enum KongType { first, second }

class Kong extends StatelessWidget {
  final double height;
  const Kong({
    Key? key,
    this.height = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/sprites/kong/kong.png', height: height);
  }
}
