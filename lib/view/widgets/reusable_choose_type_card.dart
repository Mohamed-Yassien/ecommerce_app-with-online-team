import 'package:ecomm_with_team/core/responsive/models/device_info.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class ReusableChooseTypeCard extends StatelessWidget {
  const ReusableChooseTypeCard({Key? key, required this.info, required this.image, required this.color, required this.title})
      : super(key: key);

  final DeviceInfo info;
  final String image;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: info.screenHeight * .12,
      width: info.screenWidth * .5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
          ),
          SizedBox(
            width: 1.h,
          ),
          Text(
          title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
