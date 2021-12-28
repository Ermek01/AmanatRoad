import 'package:amanat_road/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:amanat_road/pin_code_fields.dart';

class CodeInputPage extends StatefulWidget {
  const CodeInputPage({Key? key}) : super(key: key);

  @override
  _CodeInputPageState createState() => _CodeInputPageState();
}

class _CodeInputPageState extends State<CodeInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "Пожалуйста введите код",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat-SemiBold',
                      color: Color(0xFF062E4B),
                      fontWeight: FontWeight.w600),
                )),
            Container(
              margin: const EdgeInsets.only(top: 21),
              width: 260,
              child: const Text(
                "Введите код в течении 1:00 мин, если не получили код попробуйте отправить еще раз",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat-Regular',
                    color: Color(0xFF797979),
                    fontWeight: FontWeight.normal),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            PinCodeTextField(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              cursorColor: const Color(0xFFFFA51C),
              textStyle: const TextStyle(
                fontSize: 24,
                fontFamily: 'Montserrat',
                color: Color(0xFF2E2E2E),
                fontWeight: FontWeight.w500,
              ),
              appContext: context,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              onChanged: (String value) {},
              onCompleted: (String value) {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return const RegisterPage();
                  })
                );
              },
              autoFocus: true,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                fieldWidth: 50,
                fieldHeight: 50,
                activeColor: const Color(0xFFD0D0D0),
                inactiveColor: const Color(0xFFD0D0D0),
                selectedColor: const Color(0xFFD0D0D0),
              ),
              keyboardType: TextInputType.number,
            ),
            const Padding(padding: EdgeInsets.only(top: 60)),
            GestureDetector(
              child: const Text(
                "Отправить ещё раз",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF797979),
                    fontStyle: FontStyle.normal),
              ),
            )
          ],
        ),
      ),
    );
  }
}
