import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class StairMidWidget extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Color lightColor;
  final Color darkColor;

  const StairMidWidget({
    Key? key,
    this.color = AppColors.blue,
    this.lightColor = AppColors.lightBlue,
    this.darkColor = AppColors.darkBlue,
    this.height = 9,
    this.width = 26,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //handrail left
            Container(
              height: constraints.maxHeight * 1,
              width: constraints.maxWidth * .11,
              color: color,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    //handrail center left
                    Container(
                      height: constraints.maxHeight * .34,
                      width: constraints.maxWidth * .058,
                      color: darkColor,
                    ),
                    Container(
                      height: constraints.maxHeight * .34,
                      width: constraints.maxWidth * .058,
                      color: color,
                    ),
                    //handrail center middle
                    Column(
                      children: [
                        Container(
                          height: constraints.maxHeight * .17,
                          width: constraints.maxWidth * .544,
                          color: lightColor,
                        ),
                        Container(
                          height: constraints.maxHeight * .17,
                          width: constraints.maxWidth * .54,
                          color: color,
                        ),
                      ],
                    ),
                    //handrail center right
                    Container(
                      height: constraints.maxHeight * .34,
                      width: constraints.maxWidth * .058,
                      color: color,
                    ),
                    Container(
                      height: constraints.maxHeight * .34,
                      width: constraints.maxWidth * .058,
                      color: darkColor,
                    ),
                  ],
                ),
              ],
            ),
            // handrail right
            Container(
              height: constraints.maxHeight * 1,
              width: constraints.maxWidth * .11,
              color: color,
            ),
          ],
        );
      }),
    );
  }
}
