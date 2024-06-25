import 'package:flutter/material.dart';
import '../constants.dart';
import '../helper/text_widget.dart';
import '../routes/routes.dart';
import 'drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const DrawerHeader(
              // child: Image.asset("assets/images/logo.png"),
              child: Center(
                  child: Text(
                "Instant Mechanics",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: TextWidget(text: "Users",size: 14.0,color: Colors.black,isBold: true,)
            ),

            const DrawerListTile(
              index: 1,
              screenIndex: Routes.USERS,
              title: "Users",
              svgSrc: "assets/icons/menu_dashboard.svg",
            ),
            const SizedBox(
              height: defaultDrawerHeadHeight,
            ),
            Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: TextWidget(text: "Mechanics Owners",size: 14.0,color: Colors.black,isBold: true,)
            ),
            const SizedBox(
              height: defaultDrawerHeadHeight - 5,
            ),
            const DrawerListTile(
              index: 2,
              screenIndex: Routes.GARAGE,
              title: "Mechanics Owners",
              svgSrc: "assets/icons/menu_dashboard.svg",
            ),

            //Sale LIST
            const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),

          ],
        ),
      ),

    );
  }
}
