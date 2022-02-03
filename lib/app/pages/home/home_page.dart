import 'package:flutter/material.dart';
import 'package:kong_fteam/app/core/commands/dir_movement.dart';
import 'package:kong_fteam/app/core/commands/jump_buttom.dart';

import '../../core/components/characters/kong/kong.dart';
import '../../core/components/characters/mario/mario.dart';
import '../../core/components/characters/princess/princess.dart';
import '../../core/components/lattices/lattice_mounted.dart';
import '../../core/components/stairs/stair_mounted.dart';
import '../../core/constants/colors.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: size.width,
          height: size.height,
          color: AppColors.bgScaffold,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              //--------------------------Lattices---------------------------
              Positioned(
                left: size.width * .2,
                top: size.height * .336,
                child: LatticeMounted(numberOfPieces: 4, size: size),
              ),
              Positioned(
                top: size.height * .43,
                child: LatticeMounted(numberOfPieces: 9, size: size),
              ),
              Positioned(
                right: 0,
                top: size.height * .643,
                child: LatticeMounted(numberOfPieces: 6, size: size),
              ),
              Positioned(
                bottom: size.height * .111,
                child: LatticeMounted(numberOfPieces: 9, size: size),
              ),
              //--------------------------Stairs-----------------------------
              Positioned(
                left: size.width * .1276,
                bottom: size.height * .569,
                child: StairMounted(numberOfPieces: 16, size: size),
              ),
              Positioned(
                left: size.width * .449,
                bottom: size.height * .569,
                child: StairMounted(numberOfPieces: 6, size: size),
              ),
              Positioned(
                left: size.width * .65,
                bottom: size.height * .357,
                child: StairMounted(numberOfPieces: 16, size: size),
              ),
              Positioned(
                left: size.width * .452,
                bottom: size.height * .14,
                child: StairMounted(numberOfPieces: 16, size: size),
              ),
              //--------------------------Characters-------------------------
              //--------------------------Command-------------------------
              Positioned(
                bottom: size.height * .0128,
                left: size.width * .0255,
                child: JumpButton(
                  size: size.height * .084,
                  onTap: () {
                    controller.jump();
                    setState(() {});
                  },
                ),
              ),
              Positioned(
                bottom: size.height * .0128,
                right: size.width * .0255,
                child: DirectionalMoviment(
                  size: size.height * .084,
                  onTopPress: () {
                    setState(() {
                      controller.moveUp();
                    });
                  },
                  onBottomPress: () {
                    setState(() {
                      controller.moveDown();
                    });
                  },
                  onLeftPress: () {
                    setState(() {
                      controller.moveLeft();
                    });
                  },
                  onRightPress: () {
                    setState(() {
                      controller.moveRight();
                    });
                  },
                ),
              ),
              //--------------------------Command-------------------------
              //--------------------------Characters-------------------------
              Positioned(
                top: size.height * .3546,
                left: size.width * .027,
                child: const Kong(),
              ),
              Positioned(
                top: size.height * .288,
                left: size.width * .356,
                child: const Princess(),
              ),
              AnimatedContainer(
                alignment: Alignment(controller.x, controller.y),
                duration: const Duration(milliseconds: 0),
                child: Mario(pos: controller.marioPos),
              ),
              //--------------------------Characters-------------------------
            ],
          ),
        ),
      ),
    );
  }
}
