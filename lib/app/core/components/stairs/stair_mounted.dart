import 'package:flutter/material.dart';

import 'stair_bot_widget.dart';
import 'stair_mid_widget.dart';
import 'stair_top_widget.dart';

class StairMounted extends StatelessWidget {
  final int numberOfPieces;
  final Size size;

  const StairMounted({
    Key? key,
    this.numberOfPieces = 1,
    this.size = const Size(26, 12),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StairTopWidget(
          height: size.height * .01,
          width: size.width * .08,
        ),
        for (var i = 0; i < numberOfPieces; i++)
          StairMidWidget(
            height: size.height * .0123,
            width: size.width * .08,
          ),
        StairBotWidget(
          height: size.height * .01,
          width: size.width * .08,
        ),
      ],
    );
  }
}
