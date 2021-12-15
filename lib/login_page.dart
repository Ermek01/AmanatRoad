import 'package:amanat_road/code_input_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Image.asset(
                'assets/images/logo_app.png',
                width: 219,
                height: 219,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                autofocus: true,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(width: 2, color: Color(0xFFD3D3D3)),
                  ),
                  labelText: 'Телефон:',
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
                        "Получить код",
                        style: TextStyle(),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const CodeInputPage();
                        }));
                      }),
                ))
          ],
        ),
      ),
    );
  }
}
