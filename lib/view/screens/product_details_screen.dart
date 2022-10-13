import 'package:ecomm_with_team/view/components/product_details_image_card.dart';
import 'package:flutter/material.dart';

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
              children: [
                ProductDetailsImageCard(
                  info: info,
                  image: Assets.imagesBanana,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
