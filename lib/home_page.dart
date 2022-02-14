import 'package:amanat_road/share_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'contact_us_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/ic_balance.png',
                            width: 55,
                            height: 55,
                          ),
                          const Positioned.fill(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "135",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Roboto-bold',
                                        color: Color(0xFFFFFFFF),
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700),
                                  )))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset(
                                'assets/images/ic_news.png',
                              ),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                            ));
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 16, right: 16),
                  child: Stack(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          fillColor: Color(0xFFF9F9F9),
                          hintText: 'Найти отправление',
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              color: Color(0x80062E4B),
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500),
                          contentPadding: const EdgeInsets.only(
                              left: 20, bottom: 15, top: 14, right: 45),
                        ),
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            color: Color(0x80062E4B),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500),
                      ),
                      Positioned.fill(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 31),
                              child: SvgPicture.asset(
                                'assets/images/ic_search.svg',
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 16, right: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return const SharePage();
                              }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFFFFA824),
                          ),
                          width: 170,
                          height: 100,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/ic_calculate.svg',
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 13),
                                  child: Text(
                                    'Рассчитать \n и отправить \n посылку',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Montserrat-SemiBold',
                                        color: Color(0xFFFFFFFF),
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => ContactUsPage()
                              ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: Color(0xFF26C165), width: 2),
                                borderRadius: BorderRadius.circular(15.0),
                                color: Color(0xFFFFFFFF),
                              ),
                              width: 170,
                              height: 100,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/ic_call.svg',
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: Text(
                                        'Cвязаться \n с нами',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Montserrat-SemiBold',
                                            color: Color(0xFF062E4B),
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Color(0xFFFFA824),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 27),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Часто задаваемые вопросы",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat-SemiBold',
                                      color: Color(0xFFFFFFFF),
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: SvgPicture.asset(
                                    'assets/images/ic_arrow_right_white.svg',
                                    width: 16,
                                    height: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28, right: 28, top: 22),
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFFFFFFF),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 17),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/ic_info.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Где моя посылка?',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Montserrat',
                                              color: Color(0xFF062E4B),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 30),
                                        child: SvgPicture.asset(
                                          'assets/images/ic_arrow_right.svg',
                                          width: 18,
                                          height: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28, right: 28, top: 5),
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFFFFFFF),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 17),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/ic_info.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Как получить кэшбэк?',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Montserrat',
                                              color: Color(0xFF062E4B),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 30),
                                        child: SvgPicture.asset(
                                          'assets/images/ic_arrow_right.svg',
                                          width: 18,
                                          height: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28, right: 28, top: 5),
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFFFFFFF),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 17),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/ic_info.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Как отправить посылку?',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Montserrat',
                                              color: Color(0xFF062E4B),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 30),
                                        child: SvgPicture.asset(
                                          'assets/images/ic_arrow_right.svg',
                                          width: 18,
                                          height: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28, right: 28, top: 5),
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFFFFFFF),
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 17),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/ic_info.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 8),
                                        child: Text(
                                          'Как получить посылку?',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Montserrat',
                                              color: Color(0xFF062E4B),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const Spacer(),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 30),
                                        child: SvgPicture.asset(
                                          'assets/images/ic_arrow_right.svg',
                                          width: 18,
                                          height: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
      )
    );
  }
}
