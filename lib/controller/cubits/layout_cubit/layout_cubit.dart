import 'package:ecomm_with_team/controller/cubits/layout_cubit/layout_states.dart';
import 'package:ecomm_with_team/view/screens/nav_bar_screens/account_screen.dart';
import 'package:ecomm_with_team/view/screens/nav_bar_screens/cart_screen.dart';
import 'package:ecomm_with_team/view/screens/nav_bar_screens/explore_screen.dart';
import 'package:ecomm_with_team/view/screens/nav_bar_screens/favorites_screen.dart';
import 'package:ecomm_with_team/view/screens/nav_bar_screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  LayoutCubit() : super(LayoutInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> navScreens = const [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoritesScreen(),
    AccountScreen()
  ];

  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.shop),
      label: 'Shop',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search_off_outlined),
      label: 'Explore',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Cart',
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border), label: 'Favorite'),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_outlined),
      label: 'Account',
    ),
  ];

  void changeNavIndex(int index) {
    currentIndex = index;
    emit(LayoutChangeNavBarItemState());
  }
}
