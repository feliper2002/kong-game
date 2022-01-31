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
    print("Height: ${size.height}\nWidth: ${size.width}");
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
                top: size.height * .332,
                child: const LatticeMounted(numberOfPieces: 4),
              ),
              Positioned(
                top: size.height * .43,
                child: const LatticeMounted(numberOfPieces: 9),
              ),
              Positioned(
                right: 0,
                top: size.height * .643,
                child: const LatticeMounted(numberOfPieces: 6),
              ),
              Positioned(
                bottom: size.height * .111,
                child: const LatticeMounted(numberOfPieces: 9),
              ),
              //--------------------------Stairs-----------------------------
              Positioned(
                left: size.width * .1276,
                bottom: size.height * .569,
                child: const StairMounted(numberOfPieces: 16),
              ),
              Positioned(
                left: size.width * .449,
                bottom: size.height * .569,
                child: const StairMounted(numberOfPieces: 6),
              ),
              Positioned(
                left: size.width * .65,
                bottom: size.height * .357,
                child: const StairMounted(numberOfPieces: 16),
              ),
              Positioned(
                left: size.width * .452,
                bottom: size.height * .14,
                child: const StairMounted(numberOfPieces: 16),
              ),
              //--------------------------Characters-------------------------
              //--------------------------Command-------------------------
              Positioned(
                bottom: size.height * .0128,
                left: size.width * .0255,
                child: JumpButton(
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
                top: size.height * .285,
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
