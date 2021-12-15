import 'package:amanat_road/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'code_input_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
                padding: EdgeInsets.only(top: 40 , left: 22),
                child: Text(
                  "Добро пожаловать в Аманат Роуд!",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF062E4B),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600),
                )),
            const Padding(
                padding: EdgeInsets.only(top: 20 , left: 22),
                child: Text(
                  "Заполните пожалуйста Ваши данные.",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF062E4B),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400),
                )),
            const Padding(
              padding: EdgeInsets.only(top: 37, left: 22, right: 22),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Color(0xFFD3D3D3))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 2, color: Color(0xFFD3D3D3)),
                  ),
                  labelText: 'ФИО:',
                  labelStyle: TextStyle(
                      color: Color(0xFF062E4B),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18, left: 22, right: 22),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Color(0xFFD3D3D3))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 2, color: Color(0xFFD3D3D3)),
                  ),
                  labelText: 'Город',
                  labelStyle: TextStyle(
                      color: Color(0xFF062E4B),
                      fontSize: 17,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 18, left: 22, right: 22),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 2, color: Color(0xFFD3D3D3))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 2, color: Color(0xFFD3D3D3)),
                  ),
                  labelText: 'Адрес',
                  labelStyle: TextStyle(
                      color: Color(0xFF062E4B),
                      fontSize: 17,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500),
                  fillColor: Color(0xFFFFFFFF),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22, left: 22),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                      value: value,
                      activeColor: const Color(0xFFFFA51C),
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      }
                  ),
                  const Text(
                    "Согласен (на) на пользовательское соглашение",
                    style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'Montserrat',
                        color: Color(0xFF000000),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
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
                        "Войти",
                        style: TextStyle(),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return const MainPage();
                            }));
                      }),
                ))
          ],
        ),
      ),
    );
  }
}
