import 'package:flutter/material.dart';

class JumpButton extends StatelessWidget {
  final double size;
  final void Function()? onTap;
  const JumpButton({
    Key? key,
    this.size = 60,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function(),
      child: Container(
          height: size,
          width: size,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
            border: Border.all(width: 2, color: Colors.black),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(width: 2, color: Colors.white),
            ),
          )),
    );
  }
}
