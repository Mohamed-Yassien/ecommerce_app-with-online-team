import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../generated/assets.dart';
import '../components/onboarding_footer.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  Assets.imagesUserBackground,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: height * .13,
            left: 10,
            right: 10,
            child: const OnBoardingFooter(),
          ),
        ],
      ),
    );
  }
}
