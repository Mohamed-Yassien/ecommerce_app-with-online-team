import 'package:ecomm_with_team/core/methods.dart';
import 'package:ecomm_with_team/core/responsive/ui_components/info_widget.dart';
import 'package:ecomm_with_team/view/components/shop_screen_header.dart';
import 'package:ecomm_with_team/view/components/shop_screen_stack.dart';
import 'package:ecomm_with_team/view/screens/product_details_screen.dart';
import 'package:ecomm_with_team/view/widgets/reusable_choose_type_card.dart';
import 'package:ecomm_with_team/view/widgets/reusable_product_item.dart';
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
          extendBodyBehindAppBar: true,
          body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
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
                      height: 2.h,
                    ),
                    SizedBox(
                      height: info.screenHeight * .33,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 2.h,
                          );
                        },
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ReusableProductItem(
                            info: info,
                            image: Assets.imagesBanana,
                            onItemPress: () {
                              navigateTo(
                                  widget: const ProductDetailsScreen(),
                                  context: context);
                            },
                          );
                        },
                        itemCount: 10,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const ReusableRowForSeeAll(
                      title: 'Best Selling',
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      height: info.screenHeight * .33,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 2.h,
                          );
                        },
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ReusableProductItem(
                            info: info,
                            image: Assets.imagesFilfil,
                            onItemPress: () {
                              navigateTo(
                                  widget: const ProductDetailsScreen(),
                                  context: context);
                            },
                          );
                        },
                        itemCount: 10,
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const ReusableRowForSeeAll(
                      title: 'Groceries',
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      height: info.screenHeight * .12,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          ReusableChooseTypeCard(
                            info: info,
                            color: const Color(0xffFEF1E4),
                            image: Assets.imagesPulses,
                            title: 'Pulses',
                          ),
                          SizedBox(
                            width: 2.h,
                          ),
                          ReusableChooseTypeCard(
                            info: info,
                            color: const Color(0xffE5F3EA),
                            image: Assets.imagesRice,
                            title: 'Rice',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      height: info.screenHeight * .33,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 2.h,
                          );
                        },
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ReusableProductItem(
                            info: info,
                            image: Assets.imagesMeat,
                            onItemPress: () {
                              navigateTo(
                                  widget: const ProductDetailsScreen(),
                                  context: context);
                            },
                          );
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
