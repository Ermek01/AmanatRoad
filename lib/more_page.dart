import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 150, left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/ic_user.svg',
                        width: 24,
                        height: 24,
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 18),
                          child: Text(
                            "Мой профиль",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Color(0xFF062E4B),
                                fontWeight: FontWeight.w500),
                          )
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        'assets/images/ic_arrow_right.svg',
                      )

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_price_list.svg',
                          width: 28,
                          height: 28,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Прайс лист",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF062E4B),
                                  fontWeight: FontWeight.w500),
                            )
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/images/ic_arrow_right.svg',
                        )

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_calc.svg',
                          width: 23,
                          height: 23,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: Text(
                              "Калькулятор",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF062E4B),
                                  fontWeight: FontWeight.w500),
                            )
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/images/ic_arrow_right.svg',
                        )

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_location.svg',
                          width: 26,
                          height: 26,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Адреса филиалов",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF062E4B),
                                  fontWeight: FontWeight.w500),
                            )
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/images/ic_arrow_right.svg',
                        )

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_warning.svg',
                          width: 24,
                          height: 24,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: Text(
                              "Документы",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF062E4B),
                                  fontWeight: FontWeight.w500),
                            )
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/images/ic_arrow_right.svg',
                        )

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_warning.svg',
                          width: 24,
                          height: 24,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: Text(
                              "О нас",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF062E4B),
                                  fontWeight: FontWeight.w500),
                            )
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/images/ic_arrow_right.svg',
                        )

                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_logout.svg',
                          width: 24,
                          height: 24,
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: Text(
                              "Выход",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: Color(0xFF062E4B),
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500),
                            )
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/images/ic_arrow_right.svg',
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
