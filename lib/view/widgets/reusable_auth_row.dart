import 'package:flutter/material.dart';

class ReusableAuthRow extends StatelessWidget {
  const ReusableAuthRow({Key? key, required this.title, required this.subtitle, required this.subtitlePress}) : super(key: key);


  final String title;
  final String subtitle;
  final VoidCallback subtitlePress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        TextButton(
          onPressed: subtitlePress,
          child:  Text(
            subtitle,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
