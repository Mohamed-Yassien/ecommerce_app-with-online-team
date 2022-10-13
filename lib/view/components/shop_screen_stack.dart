import 'package:ecomm_with_team/core/responsive/models/device_info.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/responsive/ui_components/info_widget.dart';
import '../../generated/assets.dart';

class ShopScreenStack extends StatelessWidget {
  const ShopScreenStack({Key? key, required this.info}) : super(key: key);

  final DeviceInfo info;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: info.screenHeight * .17,
      child: InfoWidget(
        builder: (context, infoLocal) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Stack(
              children: [
                Image.asset(
                  Assets.imagesRectangle,
                  height: info.localHeight,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  Assets.imagesFruits,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset(
                    Assets.imagesGreen,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    Assets.imagesTom,
                  ),
                ),
                Positioned(
                  top: infoLocal.localHeight * .4,
                  left: infoLocal.screenWidth * .4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fresh Vegetables',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Colors.black54,
                              fontSize: 18,
                            ),
                      ),
                      SizedBox(height: .3.h),
                      Text(
                        'Get Up To 40% OFF',
                        style: Theme.of(context).textTheme.caption!.copyWith(
                              color: Colors.green,
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
