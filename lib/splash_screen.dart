import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/ic_transport.svg',
                    width: 53,
                    height: 53,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/images/ic_moto.svg',
                        width: 54,
                        height: 54,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: Image.asset(
                          'assets/images/logo_app.png',
                          width: 147,
                          height: 147,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: SvgPicture.asset(
                          'assets/images/ic_word.svg',
                          width: 54,
                          height: 54,
                        ),
                      ),
                    ],
                  ),

                ],

              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      'assets/images/ic_plane.svg',
                      width: 54,
                      height: 54,
                    ),
                    SvgPicture.asset(
                      'assets/images/ic_person.svg',
                      width: 54,
                      height: 54,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/ic_shop.svg',
                      width: 54,
                      height: 54,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
