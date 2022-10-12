import 'package:flutter/material.dart';

class SignUpAgreement extends StatelessWidget {
  const SignUpAgreement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      children: [
        Text(
          'By continuing you agree to our ',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.grey[400],
              ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'Terms Of Services ',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.green,
                ),
          ),
        ),
        Text(
          'and ',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Colors.grey[400],
              ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'Privacy Policy ',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Colors.green,
                ),
          ),
        ),
      ],
    );
  }
}
