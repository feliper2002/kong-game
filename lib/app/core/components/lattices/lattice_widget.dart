import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class LatticeWidget extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Color lightColor;
  final Color darkColor;

  const LatticeWidget({
    Key? key,
    this.color = AppColors.pink,
    this.lightColor = AppColors.lightPink,
    this.darkColor = AppColors.darkPink,
    this.height = 24,
    this.width = 36,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * .0315,
      width: width * .09,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: lightColor,
            ),
            Container(
                width: constraints.maxWidth * 1,
                height: constraints.maxHeight * .06,
                color: color),
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: darkColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: constraints.maxWidth * .12,
                  height: constraints.maxHeight * .06,
                  color: darkColor,
                ),
                Container(
                  width: constraints.maxWidth * .12,
                  height: constraints.maxHeight * .06,
                  color: darkColor,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: constraints.maxWidth * .17,
                  height: constraints.maxHeight * .06,
                  color: darkColor,
                ),
                Container(
                  width: constraints.maxWidth * .17,
                  height: constraints.maxHeight * .06,
                  color: darkColor,
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: constraints.maxWidth * .19,
                    height: constraints.maxHeight * .06,
                    color: darkColor,
                  ),
                  Container(
                    width: constraints.maxWidth * .19,
                    height: constraints.maxHeight * .06,
                    color: darkColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: constraints.maxWidth * .19,
                    height: constraints.maxHeight * .06,
                    color: darkColor,
                  ),
                  Container(
                    width: constraints.maxWidth * .19,
                    height: constraints.maxHeight * .06,
                    color: darkColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: darkColor,
                      ),
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: color,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: color,
                      ),
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: darkColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: darkColor,
                      ),
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: color,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: color,
                      ),
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: darkColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: darkColor,
                      ),
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: color,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: color,
                      ),
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: darkColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: constraints.maxWidth * .27),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: darkColor,
                      ),
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: color,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: constraints.maxWidth * .14,
                        height: constraints.maxHeight * .06,
                        color: color,
                      ),
                      Container(
                        width: constraints.maxWidth * .05,
                        height: constraints.maxHeight * .06,
                        color: darkColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: constraints.maxWidth * .46,
                  height: constraints.maxHeight * .06,
                  color: color,
                ),
                Expanded(
                    child: Container(
                  height: constraints.maxHeight * .06,
                  color: darkColor,
                )),
                Container(
                  width: constraints.maxWidth * .46,
                  height: constraints.maxHeight * .06,
                  color: color,
                ),
              ],
            ),
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: darkColor,
            ),
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: lightColor,
            ),
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: color,
            ),
            Container(
              width: constraints.maxWidth * 1,
              height: constraints.maxHeight * .06,
              color: darkColor,
            ),
          ],
        );
      }),
    );
  }
}
