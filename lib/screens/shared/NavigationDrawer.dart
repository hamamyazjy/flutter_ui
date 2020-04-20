import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/contact.dart';
import 'package:flutter_ui3/screens/home.dart';
import 'package:flutter_ui3/screens/library.dart';
import 'package:flutter_ui3/screens/mu_buy.dart';
import 'package:flutter_ui3/screens/my_account.dart';
import 'package:flutter_ui3/screens/my_books.dart';
import 'package:flutter_ui3/screens/my_chart.dart';
import 'package:flutter_ui3/screens/my_order.dart';
import 'package:flutter_ui3/screens/notifications.dart';
import 'package:flutter_ui3/screens/shared/drawerList.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<DrawerList> items;

  addItems() {
    items = [];
        items.add(DrawerList('الرئيسية', Icons.message, () => Home()));

    items.add(DrawerList('طلباتي', Icons.message, () => MyOrder()));
    items.add(DrawerList('كتبي', Icons.message, () => MyBooks()));
    items.add(DrawerList('مبيعاتي', Icons.message, () => MyBuy()));
    items.add(DrawerList('الاشعارات', Icons.message, () => Notifications()));

    items.add(DrawerList('حسابي', Icons.account_circle, () => MyAccount()));
    items.add(DrawerList('سلتي', Icons.shopping_cart, () => MyChart()));
    items.add(DrawerList(' تواصل معنا', Icons.contact_phone, () => Contacts()));
  }

  @override
  Widget build(BuildContext context) {
    addItems();
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color(0XFf5534AF),
      ),
      child: Drawer(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  items[index].title,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                leading: Icon(
                  items[index].icon,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          items[index].destination()));
                },
              );
            }),
      ),
    );
  }
}
