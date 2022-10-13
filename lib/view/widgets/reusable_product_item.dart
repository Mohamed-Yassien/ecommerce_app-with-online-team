import 'package:ecomm_with_team/core/responsive/models/device_info.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class ReusableProductItem extends StatelessWidget {
  const ReusableProductItem({Key? key, required this.info, required this.image, required this.onItemPress}) : super(key: key);

  final DeviceInfo info;
  final String image;
  final VoidCallback onItemPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemPress,
      child: Container(
        height: info.screenHeight * .33,
        width: info.screenWidth * .45,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 2,
            ),
          ],
          border: Border.all(
            color: Colors.grey[200]!,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
               image,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Organic Bananas',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium,
                  ),
                  SizedBox(
                    height: .4.h,
                  ),
                  Text(
                    '7pcs, Priceg',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$4.99',
                    style:
                    Theme.of(context).textTheme.bodySmall,
                  ),
                  MaterialButton(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    elevation: 0,
                    minWidth: 5,
                    height: 30,
                    onPressed: () {},
                    color: Colors.green,
                    child: const Icon(
                      Icons.add,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
