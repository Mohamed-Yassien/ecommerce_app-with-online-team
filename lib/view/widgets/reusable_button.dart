import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    Key? key,
    required this.width,
    required this.text,
    required this.press,
  }) : super(key: key);

  final double width;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * .8,
      child: OutlinedButton(
        onPressed: press,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            const Color(0xff53B175),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
