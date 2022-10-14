import 'package:ecomm_with_team/view/components/product_details_image_card.dart';
import 'package:ecomm_with_team/view/widgets/reusable_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/responsive/ui_components/info_widget.dart';
import '../../generated/assets.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, info) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black87,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.save_alt_outlined,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductDetailsImageCard(
                  info: info,
                  image: Assets.imagesBanana,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Organic Bananas',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite_border,
                              size: 30,
                            ),
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                      Text(
                        '7pcs, Priceg',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.grey[500],
                            ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.remove,
                                  color: Colors.grey[500],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 7),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey[400]!, width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '1',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        color: Colors.grey[500],
                                      ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '\$4.99',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          bottom: 12,
                        ),
                        child: Divider(
                          color: Colors.grey[300],
                          height: 1,
                        ),
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.transparent,
                        ),
                        child: ExpansionTile(
                          title: Text(
                            'Product Details',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: Text(
                                'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      color: Colors.grey[400],
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          bottom: 12,
                        ),
                        child: Divider(
                          color: Colors.grey[300],
                          height: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nutritions',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: const Color(0xffEBEBEB),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  '100gr',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                        color: Colors.grey[400],
                                        fontSize: 8,
                                      ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey[400],
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          bottom: 12,
                        ),
                        child: Divider(
                          color: Colors.grey[300],
                          height: 1,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Review',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Row(
                            children: [
                              Row(
                                children: List<Widget>.generate(
                                  5,
                                  (index) => const Icon(
                                    Icons.star,
                                    color: Colors.deepOrange,
                                    size: 20,
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey[400],
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20.0,
                          bottom: 12,
                        ),
                        child: Divider(
                          color: Colors.grey[300],
                          height: 1,
                        ),
                      ),
                      ReusableButton(
                        width: info.screenWidth,
                        text: 'Add To Basket',
                        press: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
