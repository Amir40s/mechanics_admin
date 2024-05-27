import 'package:flutter/material.dart';
import '../constants.dart';
import '../helper/text_widget.dart';
import '../routes/routes.dart';
import 'drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            DrawerHeader(
              // child: Image.asset("assets/images/logo.png"),
              child: Center(
                  child: Text(
                "Car Mechanics",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            Padding(
                padding: EdgeInsets.only(left: defaultPadding),
                child: TextWidget(text: "Users",size: 14.0,color: Colors.black,isBold: true,)
            ),

            DrawerListTile(
              index: 1,
              screenIndex: Routes.USERS,
              title: "Users",
              svgSrc: "assets/icons/menu_dashboard.svg",
            ),
            SizedBox(
              height: defaultDrawerHeadHeight,
            ),
            Padding(
                padding: EdgeInsets.only(left: defaultPadding),
                child: TextWidget(text: "Garage Owners",size: 14.0,color: Colors.black,isBold: true,)
            ),
            SizedBox(
              height: defaultDrawerHeadHeight - 5,
            ),
            DrawerListTile(
              index: 2,
              screenIndex: Routes.GARAGE,
              title: "Garage Owners",
              svgSrc: "assets/icons/menu_dashboard.svg",
            ),




            // const DrawerListTile(
            //   index: 9,
            //   screenIndex: 9,
            //   title: "P. History",
            //   svgSrc: "assets/icons/menu_dashboard.svg",
            // ),

            // const DrawerListTile(
            //   index: 10,
            //   screenIndex: 10,
            //   title: "P. Returns",
            //   svgSrc: "assets/icons/menu_dashboard.svg",
            // ),

            // DrawerListTile(
            //   index: 11,
            //   screenIndex: 11,
            //   title: "P. Returns History",
            //   svgSrc: "assets/icons/menu_dashboard.svg",
            // ),

            //Sale LIST
            Divider(
              thickness: 0.5,
              color: Colors.black,
            ),

          ],
        ),
      ),

    );
  }
}
