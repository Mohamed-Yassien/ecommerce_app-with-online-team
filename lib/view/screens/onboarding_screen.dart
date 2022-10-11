import 'package:ecomm_with_team/view/widgets/reusable_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../generated/assets.dart';

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
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.imagesGroupG,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Welcome',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'To Our Store',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Get your groceries in as fast as one hour',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: const Color(0xffC3BBB5),
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ReusableButton(
                      width: width,
                      text: 'Get Started',
                      press: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
