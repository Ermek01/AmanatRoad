import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 20),
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
              )
            ],
          )),
    );
  }
}
