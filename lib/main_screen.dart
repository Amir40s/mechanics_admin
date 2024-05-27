import 'package:flutter/material.dart';
import 'package:mechanics_admin/home_screen.dart';
import 'package:mechanics_admin/provider/MenuAppController.dart';
import 'package:mechanics_admin/responsive.dart';
import 'package:mechanics_admin/routes/routes.dart';
import 'package:mechanics_admin/screen/garage_owner_screen.dart';
import 'package:mechanics_admin/screen/user_screen.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final menuAppController = Provider.of<MenuAppController>(context);
    Widget screen;
    switch (menuAppController.selectedIndex) {
      case Routes.USERS:
        screen = UserScreen();
        break;
      case Routes.GARAGE:
        screen = GarageOwnerScreen();
        break;

      case Routes.USERS:
        screen = HomeScreen();
        break;


      default:
        screen = HomeScreen();
        break;
    }
    return Scaffold(
      extendBody: true,
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 2,
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 8,
              child: screen,
            ),
          ],
        ),
      ),
    );
  }
}
