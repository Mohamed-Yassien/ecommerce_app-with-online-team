import 'package:ecomm_with_team/core/responsive/ui_components/info_widget.dart';
import 'package:flutter/material.dart';

import '../../generated/assets.dart';

class ReusableStackHeader extends StatelessWidget {
  const ReusableStackHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, info) {
        return Stack(
          children: [
            Container(
              width: info.screenWidth,
              height: info.screenHeight * .28,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.imagesHeaderImg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Image.asset(
                Assets.imagesGroup,
              ),
            ),
          ],
        );
      },
    );
  }
}
