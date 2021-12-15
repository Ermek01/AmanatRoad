import 'package:amanat_road/home_page.dart';
import 'package:amanat_road/notification_page.dart';
import 'package:amanat_road/orders_page.dart';
import 'package:amanat_road/share_page.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'more_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int selectedPage = 0;
  final _pageOption=[const HomePage(), const OrdersPage(), const SharePage(), const NotificationPage(), const MorePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageOption[selectedPage],
        bottomNavigationBar: ConvexAppBar(
          height: 63,
          top: -25,
          curveSize: 80,
          style: TabStyle.fixedCircle,
          backgroundColor: const Color(0xFFFFFFFF),
          color: const Color(0xFF8D8D8D),
          activeColor: const Color(0xFF062E4B),
          items: const [
            TabItem(icon: Icons.home, title: "Главная"),
            TabItem(icon: Icons.person, title: "Мои заказы"),
            TabItem(icon: Icons.add_circle, title: "Отправить"),
            TabItem(icon: Icons.add_alert, title: "Уведомления"),
            TabItem(icon: Icons.more_horiz, title: "Ещё"),
          ],
          initialActiveIndex: selectedPage,
          onTap: (int index) {
            setState(() {
              selectedPage = index;
            });
          },
        ),
    );
  }
}
