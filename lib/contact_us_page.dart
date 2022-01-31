import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
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
                          borderRadius: BorderRadius.circular(10),
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
            const Padding(
              padding: EdgeInsets.only(left: 32, top: 21),
              child: Text(
                'Связаться через:',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF062E4B),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 22),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF26C165),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 64,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/ic_whats_app.svg',
                          width: 31,
                          height: 31,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'Whats App',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat-SemiBold',
                                color: Color(0xFFFFFFFF),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFF007A),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 64,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'О!',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat-SemiBold',
                                color: Color(0xFFFFFFFF),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 15),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFFFA51C),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 64,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'Beeline',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat-SemiBold',
                                color: Color(0xFFFFFFFF),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
