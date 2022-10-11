import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../core/methods.dart';
import '../../generated/assets.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff53B175),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xff53B175),
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: const Color(0xff53B175),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.imagesGroupG,
                ),
                SizedBox(
                  width: 2.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('nectar',
                        style: Theme.of(context).textTheme.headlineMedium),
                    Text(
                      'online groceriet',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () => navigateToAndFinish(
        widget: const OnBoardingScreen(),
        context: context,
      ),
    );
  }
}
