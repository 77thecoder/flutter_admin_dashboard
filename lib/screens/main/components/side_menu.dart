import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menu = Provider.of<MenuController>(context);

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    "assets/images/logo.png",
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "KD Techs",
                  style: TextStyle(color: Colors.white54),
                )
              ],
            ),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              menu.setMyMenu("DASHBOARD");
            },
          ),
          DrawerListTile(
            title: "Transaction",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              menu.setMyMenu("TRANSACTION");
            },
          ),
          DrawerListTile(
            title: "Task",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              menu.setMyMenu("TASK");
            },
          ),
          DrawerListTile(
            title: "Product",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              menu.setMyMenu("PRODUCT");
            },
          ),
          DrawerListTile(
            title: "Store",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              menu.setMyMenu("STORE");
            },
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {
              menu.setMyMenu("NOTIFICATION");
            },
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {
              menu.setMyMenu("PROFILE");
            },
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              menu.setMyMenu("SETTINGS");
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: press,
        horizontalTitleGap: 0.0,
        leading: SvgPicture.asset(
          svgSrc,
          color: Colors.white54,
          height: 16,
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white54),
        ),
        trailing: title == "Transaction"
            ? Badge(
                badgeContent: Text('3'),
              )
            : title == "Notification"
                ? Badge(
                    badgeContent: Text('7'),
                  )
                : Badge(badgeColor: secondaryColor));
  }
}
