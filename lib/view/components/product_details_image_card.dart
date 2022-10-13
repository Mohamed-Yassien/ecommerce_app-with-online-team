import 'package:ecomm_with_team/core/responsive/models/device_info.dart';
import 'package:flutter/material.dart';

import '../../generated/assets.dart';

class ProductDetailsImageCard extends StatelessWidget {
  const ProductDetailsImageCard(
      {Key? key, required this.info, required this.image})
      : super(key: key);

  final DeviceInfo info;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: info.screenWidth,
      height: info.screenHeight * .35,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Assets.imagesBigRect,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}
