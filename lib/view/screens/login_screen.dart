import 'package:ecomm_with_team/core/methods.dart';
import 'package:ecomm_with_team/core/responsive/ui_components/info_widget.dart';
import 'package:ecomm_with_team/view/components/login_screen_header.dart';
import 'package:ecomm_with_team/view/layouts/app_layout.dart';
import 'package:ecomm_with_team/view/screens/sign_up_screen.dart';
import 'package:ecomm_with_team/view/widgets/reusable_auth_column.dart';
import 'package:ecomm_with_team/view/widgets/reusable_auth_row.dart';
import 'package:ecomm_with_team/view/widgets/reusable_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/reusable_text_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, info) {
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
                        title: 'Login',
                        subtitle: 'Enter your email and password',
                      ),
                      SizedBox(
                        height: 30.sp,
                      ),
                      const ReusableTextForm(
                        labelString: 'Email',
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const ReusableTextForm(
                        labelString: 'Password',
                        hasIcon: true,
                      ),
                      SizedBox(
                        height: 7.sp,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password ? ',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Colors.black,
                                    ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.sp,
                      ),
                      ReusableButton(
                        width: info.screenWidth,
                        text: 'Login',
                        press: () {
                          navigateToAndFinish(
                            widget: const AppLayout(),
                            context: context,
                          );
                        },
                      ),
                      SizedBox(
                        height: 15.sp,
                      ),
                      ReusableAuthRow(
                        title: 'Don\'t have an account ?',
                        subtitle: 'SignUp',
                        subtitlePress: () {
                          navigateTo(
                            widget: const SignUpScreen(),
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
      },
    );
  }
}
