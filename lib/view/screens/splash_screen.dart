import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../generated/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
                    Text(
                      'nectar',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            color: Colors.white,
                        fontSize: 38.sp,
                        fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'online groceriet',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                        fontSize: 13.sp,
                        letterSpacing: 1.4.sp,
                        color: Colors.white,
                      ),
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
}
