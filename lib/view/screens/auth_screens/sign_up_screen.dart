import 'package:ecomm_with_team/core/methods.dart';
import 'package:ecomm_with_team/core/responsive/ui_components/info_widget.dart';
import 'package:ecomm_with_team/view/components/login_screen_header.dart';
import 'package:ecomm_with_team/view/components/sign_up_agreement.dart';
import 'package:ecomm_with_team/view/screens/auth_screens/login_screen.dart';
import 'package:ecomm_with_team/view/widgets/reusable_auth_column.dart';
import 'package:ecomm_with_team/view/widgets/reusable_auth_row.dart';
import 'package:ecomm_with_team/view/widgets/reusable_button.dart';
import 'package:ecomm_with_team/view/widgets/reusable_text_form.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(builder: (context, info) {
      return Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReusableStackHeader(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableAuthColumn(
                      title: 'SignUp',
                      subtitle: 'Enter your credentials to continue',
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    const ReusableTextForm(
                      labelString: 'Username',
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    const ReusableTextForm(
                      labelString: 'Email',
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    const ReusableTextForm(
                      labelString: 'Password',
                      hasIcon: true,
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    const SignUpAgreement(),
                    SizedBox(
                      height: 30.sp,
                    ),
                    ReusableButton(
                      width: info.screenWidth,
                      text: 'Sign Up',
                      press: () {},
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                    ReusableAuthRow(
                      title: 'Already have an account ?',
                      subtitle: 'Login',
                      subtitlePress: () {
                        navigateTo(
                          widget: const LoginScreen(),
                          context: context,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
