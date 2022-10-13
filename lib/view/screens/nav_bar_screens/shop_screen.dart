import 'package:ecomm_with_team/core/responsive/ui_components/info_widget.dart';
import 'package:ecomm_with_team/view/components/shop_screen_header.dart';
import 'package:ecomm_with_team/view/components/shop_screen_stack.dart';
import 'package:ecomm_with_team/view/widgets/reusable_row_for_see_all.dart';
import 'package:ecomm_with_team/view/widgets/reusable_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../generated/assets.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, info) {
        return Scaffold(
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
