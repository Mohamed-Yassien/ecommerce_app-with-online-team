import 'package:flutter/material.dart';

class ReusableRowForSeeAll extends StatelessWidget {
  const ReusableRowForSeeAll({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          'see all',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
