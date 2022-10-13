import 'package:ecomm_with_team/controller/cubits/layout_cubit/layout_cubit.dart';
import 'package:ecomm_with_team/controller/cubits/layout_cubit/layout_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LayoutCubit>(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutStates>(
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);

          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              items: cubit.items,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeNavIndex(index);
              },
            ),
            body: cubit.navScreens[cubit.currentIndex],
          );
        },
      ),
    );
  }
}
