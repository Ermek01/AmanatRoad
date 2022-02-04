import 'package:amanat_road/home_page.dart';
import 'package:amanat_road/notification_page.dart';
import 'package:amanat_road/orders_page.dart';
import 'package:amanat_road/share_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'more_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    OrdersPage(),
    SharePage(),
    NotificationPage(),
    MorePage()
  ];

  void bottomTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            _buildOffstageNavigator(0),
            _buildOffstageNavigator(1),
            _buildOffstageNavigator(2),
            _buildOffstageNavigator(3),
            _buildOffstageNavigator(4),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SizedBox(
            height: 57,
            width: 57,
            child: FloatingActionButton(
              backgroundColor: Colors.transparent,
              elevation: 3,
              onPressed: () {
                setState(() {
                  bottomTapped(2);
                });
              },
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 10),
                  shape: BoxShape.circle,
                  color: const Color(0xFFFFA51C),
                ),
                child: const Icon(Icons.add, size: 30),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 80.0,
          padding: EdgeInsets.only(top: 20.0),
          child: Theme(
            data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.white,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: const Color(0xFFFFA51C),
                bottomAppBarColor: Colors.green,
                textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: TextStyle(color: Colors.grey))),
            // sets the inactive color of the `BottomNavigationBar`
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                elevation: 20,
                iconSize: 22,
                selectedItemColor: const Color(0xFF062E4B),
                unselectedItemColor: const Color(0xFF8D8D8D),
                currentIndex: _selectedIndex,
                onTap: (int index) {
                  bottomTapped(index);
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/ic_home.png"),
                      ),
                      title: Text('Главная',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500)),
                      backgroundColor: Colors.black),
                  BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/ic_profile.png"),
                    ),
                    title: Text('Мои заказы',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500)),
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.bookmark_border,
                        color: Colors.transparent,
                      ),
                      title: Text('Отправить',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500))),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage("assets/images/ic_noti.png"),
                      ),
                      title: Text('Уведомления',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500))),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.more_horiz),
                      title: Text('Ещё',
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500))),
                ]),
          ),
        ),
      ),
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_selectedIndex].currentState!.maybePop();

        print(
            'isFirstRouteInCurrentTab: ' + isFirstRouteInCurrentTab.toString());

        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
    );
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name]!(context),
          );
        },
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          const HomePage(),
          const OrdersPage(),
          const SharePage(),
          const NotificationPage(),
          const MorePage(),
        ].elementAt(index);
      },
    };
  }
}
