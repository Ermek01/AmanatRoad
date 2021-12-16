import 'package:amanat_road/home_page.dart';
import 'package:amanat_road/notification_page.dart';
import 'package:amanat_road/orders_page.dart';
import 'package:amanat_road/share_page.dart';
import 'package:flutter/material.dart';

import 'more_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int selectedPage = 0;
  final _pageOption=[const HomePage(), const OrdersPage(), const SharePage(), const NotificationPage(), const MorePage()];

  final NotchedShape _nothed = const CircularOuterNotchedRectangle();

  @override
  void initState() {
    super.initState();
    _nothed;
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    _nothed;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOption[selectedPage],
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SizedBox(
          height: 57,
          width: 57,
          child: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 5,
            onPressed: () {
              setState(() {
                selectedPage = 2;
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
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: TextStyle(color: Colors.grey))), // sets the inactive color of the `BottomNavigationBar`
          child:
          BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 20,
              selectedItemColor: const Color(0xFF062E4B),
              unselectedItemColor: const Color(0xFF8D8D8D),
              currentIndex: selectedPage,
              onTap: (int index) {
                setState(() {
                    selectedPage = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/ic_home.png"),
                    ),
                    title: Text(
                        'Главная',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500)
                    ),
                    backgroundColor: Colors.black
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.perm_identity),
                  title: Text('Мои заказы',
                      style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500)),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.bookmark_border,color: Colors.transparent,),
                    title: Text('Отправить',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500))
                ),

                BottomNavigationBarItem(
                    icon: Icon(Icons.add_alert),
                    title: Text('Уведомления',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500))
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz),
                    title: Text('Ещё',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500))
                ),

              ]),
        ),
      ),
    );
  }
}
