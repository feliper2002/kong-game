import 'package:flutter/material.dart';

class DirectionalMoviment extends StatelessWidget {
  final double size;
  final Function? onTopPress;
  final Function? onBottomPress;
  final Function? onLeftPress;
  final Function? onRightPress;
  const DirectionalMoviment({
    Key? key,
    this.size = 60,
    this.onTopPress,
    this.onBottomPress,
    this.onLeftPress,
    this.onRightPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.orange,
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: GestureDetector(
              onTap: onTopPress! as void Function(),
              child: const Text('🔼'),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: onBottomPress! as void Function(),
              child: const Text('🔽'),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: onLeftPress! as void Function(),
              child: const Text('◀'),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: onRightPress! as void Function(),
              child: const Text('▶'),
            ),
          ),
        ],
      ),
    );
  }
}
