import 'package:amanat_road/cargo_information_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'main_page.dart';

class SharePage extends StatefulWidget {
  const SharePage({Key? key}) : super(key: key);

  @override
  _SharePageState createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {

  bool _sender = true;
  bool _receiver = false;
  bool _thirdParty = false;
  bool _cancel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 94, left: 27, right: 37),
              child: Text(
                "Ваша роль в отправлении?",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Montserrat-SemiBold',
                    color: Color(0xFF062E4B),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: _sender,
                      shape: CircleBorder(),
                      tristate: false,
                      activeColor: const Color(0xFFFFA51C),
                      splashRadius: 20,
                      side: const BorderSide(
                        color: Color(0xFFFFA51C)
                      ),
                      onChanged: (value) {
                        setState(() {
                          _receiver = false;
                          _thirdParty = false;
                          _cancel = false;
                          _sender = value!;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Отправитель",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        color: Color(0xFF062E4B),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: _receiver,
                      shape: CircleBorder(),
                      tristate: false,
                      activeColor: const Color(0xFFFFA51C),
                      splashRadius: 20,
                      side: const BorderSide(
                          color: Color(0xFFFFA51C)
                      ),
                      onChanged: (value) {
                        setState(() {
                          _receiver = value!;
                          _thirdParty = false;
                          _cancel = false;
                          _sender = false;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Получатель",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        color: Color(0xFF062E4B),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: _thirdParty,
                      shape: CircleBorder(),
                      tristate: false,
                      activeColor: const Color(0xFFFFA51C),
                      splashRadius: 20,
                      side: const BorderSide(
                          color: Color(0xFFFFA51C)
                      ),
                      onChanged: (value) {
                        setState(() {
                          _receiver = false;
                          _thirdParty = value!;
                          _cancel = false;
                          _sender = false;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Третье лицо",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        color: Color(0xFF062E4B),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      value: _cancel,
                      shape: CircleBorder(),
                      tristate: false,
                      activeColor: const Color(0xFFFFA51C),
                      splashRadius: 20,
                      side: const BorderSide(
                          color: Color(0xFFFF2929)
                      ),
                      onChanged: (value) {
                        setState(() {
                          _receiver = false;
                          _thirdParty = false;
                          _cancel = value!;
                          _sender = false;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Отмена",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        color: Color(0xFF062E4B),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 30),
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 50,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: const Color(0xFFFFA51C),
                      elevation: 0,
                      textColor: Colors.white,
                      child: const Text(
                        "Далее",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return const CargoInformationPage();
                            }));
                      }),
                ))
          ],
        ),
      ),
    );
  }
}
