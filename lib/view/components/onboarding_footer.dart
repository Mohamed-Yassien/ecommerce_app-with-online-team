import 'package:ecomm_with_team/view/screens/auth_screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../core/methods.dart';
import '../../generated/assets.dart';
import '../widgets/reusable_button.dart';

class OnBoardingFooter extends StatelessWidget {
  const OnBoardingFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
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
              press: () {
                navigateToAndFinish(
                  context: context,
                  widget: const LoginScreen(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
