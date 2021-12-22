import 'package:amanat_road/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Scaffold(
              appBar: TabBar(
                tabs: [
                  Tab(
                    text: 'Мои заказы',
                  ),
                  Tab(
                    text: 'Получатель',
                  ),
                ],
                labelStyle: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500),
                indicatorColor: Color(0xFFFFA51C),
                indicatorWeight: 3,
                labelColor: Color(0xFF062E4B),
                unselectedLabelColor: Color(0xFF797979),
              ),
              body: TabBarView(children: [MyOrderPage(), ReceiverPage()]),
            ),
          )),
    );
  }
}

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  _MyOrderPageState createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 17),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const OrderDetailPage();
                }));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                height: 100,
                decoration: const BoxDecoration(
                    color: Color(0xB3FFEA94),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 22, right: 17, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Бишкек',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF062E4B),
                                fontStyle: FontStyle.normal),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: SvgPicture.asset(
                              'assets/images/ic_arrow.svg',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Ош',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF000000),
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, left: 22, right: 17),
                      child: Text(
                        'Название заказа',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF062E4B),
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 22, right: 17, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Статус:',
                            style: TextStyle(
                                fontFamily: 'Montserrat-Regular',
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF062E4B),
                                fontStyle: FontStyle.normal),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'В обработке',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF062E4B),
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class ReceiverPage extends StatefulWidget {
  const ReceiverPage({Key? key}) : super(key: key);

  @override
  _ReceiverPageState createState() => _ReceiverPageState();
}

class _ReceiverPageState extends State<ReceiverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({Key? key}) : super(key: key);

  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 34, left: 16),
                  child: ButtonTheme(
                    minWidth: 30,
                    height: 35,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: const Color(0xFFFFA51C),
                        elevation: 0,
                        child: SvgPicture.asset(
                          'assets/images/ic_back.svg',
                          width: 7.42,
                          height: 11.79,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 28, left: 29, right: 29),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 102,
                          decoration: const BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 22, right: 17, top: 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      '№301230',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF062E4B),
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding:
                                EdgeInsets.only(top: 10, left: 22, right: 17),
                                child: Text(
                                  'Название заказа',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF062E4B),
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 22, right: 17, top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Статус:',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-Regular',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF062E4B),
                                          fontStyle: FontStyle.normal),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'В обработке',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF062E4B),
                                            fontStyle: FontStyle.normal),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 35, top: 30),
                        child: Text(
                          'Заказ создан: 13.12.21   22:10',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF062E4B),
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, left: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/images/ic_order_process.svg',
                              width: 40,
                              height: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 19),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Заказ в обработке',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF062E4B),
                                        fontStyle: FontStyle.normal),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      '22:27:47',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-Regular',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF797979),
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 52),
                        child: SvgPicture.asset(
                          'assets/images/ic_arrow_bottom.svg',
                          height: 23,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/images/ic_order_confirm.svg',
                              width: 40,
                              height: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 19),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Потвержден оператором',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF062E4B),
                                        fontStyle: FontStyle.normal),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      '22:27:47',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-Regular',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF797979),
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 52),
                        child: SvgPicture.asset(
                          'assets/images/ic_arrow_bottom.svg',
                          height: 23,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/ic_order_courier_bg.svg',
                                  width: 40,
                                  height: 40,
                                ),
                                Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: SvgPicture.asset(
                                        'assets/images/ic_order_courier.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                    )
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 19),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Назначен курьер',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF062E4B),
                                        fontStyle: FontStyle.normal),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      '22:27:47',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-Regular',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF797979),
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 58),
                              child: SvgPicture.asset(
                                'assets/images/ic_arrow_circle_right.svg',
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 52),
                        child: SvgPicture.asset(
                          'assets/images/ic_arrow_bottom.svg',
                          height: 23,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/ic_courier_send_bg.svg',
                                  width: 40,
                                  height: 40,
                                ),
                                Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: SvgPicture.asset(
                                        'assets/images/ic_courier_send.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                    )
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 19),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Получен курьером в Бишкеке',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF062E4B),
                                        fontStyle: FontStyle.normal),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      '22:27:47',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat-Regular',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF797979),
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 52),
                        child: SvgPicture.asset(
                          'assets/images/ic_arrow_bottom.svg',
                          height: 23,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
