import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pokedex/Helpers/responsive_helper.dart';
import 'package:my_pokedex/UI/home_page.dart';
import 'package:my_pokedex/utitliy/constants.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    scheduleMicrotask(() async {
      await AppImages.preCacheAssets(context);
      Timer(Duration(milliseconds: 2800), () {
        Get.off(
          HomePage(),
        );
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ResponsiveHelper(
        width: Get.width, height: Get.height, fontSize: 18, titleFontSize: 22);

    // return SplashScreen.navigate(
    //   backgroundColor: Colors.white,
    //   name: 'assets/poke_splash.flr',
    //   height: Get.height,
    //   next: (_) => HomePage(),
    //   until: () => Future.delayed(Duration(seconds: 2)),
    //   startAnimation: 'idle',
    //   fit: BoxFit.fitHeight,
    // );
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/poke_ball.png',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
