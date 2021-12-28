import 'package:amanat_road/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 16),
              child: const Text(
                "Уведомления",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat-SemiBold',
                    color: Color(0xFF062E4B),
                    fontWeight: FontWeight.w600),
              ),
            ),
            ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 17),
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return const RegisterPage();
                            })
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        height: 127,
                        decoration: const BoxDecoration(
                            color: Color(0xFFC4C4C4),
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                      )
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
