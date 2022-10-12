import 'package:flutter/material.dart';

class ReusableTextForm extends StatelessWidget {
  const ReusableTextForm({
    Key? key,
    required this.labelString,
    this.hasIcon = false,
    this.iconPress,
  }) : super(key: key);

  final String labelString;
  final bool hasIcon;
  final VoidCallback? iconPress;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelString,
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        suffixIcon: hasIcon
            ? IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_off,
                ),
              )
            : null,
      ),
    );
  }
}
