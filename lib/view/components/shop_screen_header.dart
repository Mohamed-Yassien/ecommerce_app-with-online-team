import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../generated/assets.dart';

class ShopScreenHeader extends StatelessWidget {
  const ShopScreenHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.imagesGroup,
          height: 4.h,
        ),
        SizedBox(
          height: .9.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              color: Colors.black54,
              size: 20,
            ),
            Text(
              'Dhaka, Egypt',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black54, fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
