import 'package:ecomm_with_team/core/utils/app_theme.dart';
import 'package:ecomm_with_team/view/layouts/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (
        BuildContext context,
        Orientation orientation,
        DeviceType deviceType,
      ) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appLightTheme,
          home: const AppLayout(),
        );
      },
    );
  }
}
