import 'package:ecomm_with_team/core/responsive/ui_components/info_widget.dart';
import 'package:ecomm_with_team/view/components/shop_screen_header.dart';
import 'package:ecomm_with_team/view/components/shop_screen_stack.dart';
import 'package:ecomm_with_team/view/widgets/reusable_product_item.dart';
import 'package:ecomm_with_team/view/widgets/reusable_row_for_see_all.dart';
import 'package:ecomm_with_team/view/widgets/reusable_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import '../../../generated/assets.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        // navigation bar color
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark, // status bar color
      ),
    );
    return InfoWidget(
      builder: (context, info) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const ShopScreenHeader(),
                    SizedBox(
                      height: 3.h,
                    ),
                    const ReusableSearchBar(),
                    SizedBox(
                      height: 2.h,
                    ),
                    ShopScreenStack(info: info),
                    SizedBox(
                      height: 4.h,
                    ),
                    const ReusableRowForSeeAll(
                      title: 'Exclusive Offer',
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    SizedBox(
                      height: info.screenHeight *.33,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context,index){
                          return SizedBox(width:  2.h,);
                        },
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ReusableProductItem(info: info);
                        },
                        itemCount: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
