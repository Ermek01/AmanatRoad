import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CargoInformationPage extends StatefulWidget {
  const CargoInformationPage({Key? key}) : super(key: key);

  @override
  _CargoInformationPageState createState() => _CargoInformationPageState();
}

class _CargoInformationPageState extends State<CargoInformationPage> {

  bool document = false;
  bool bigCargo = false;
  bool package = false;
  bool ransom = false;

  bool fromDoorToDoor = false;
  bool fromOfficeToAddress = false;
  bool fromOfficeToOffice = false;

  final List<String> items = [
    'До 1 кг (не выше 25см*25см*25см)',
    'До 5 кг (не выше 35см*35см*35см)',
    'До 10 кг (не выше 40см*40см*40см)',
    'Больше 10 кг',
  ];

  String? selectedValue;

  final _formKey = GlobalKey<FormState>();

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
                          borderRadius: BorderRadius.circular(5),
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
            Expanded(
                child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 27, left: 27, right: 37),
                      child: Text(
                        "Информация о грузе:",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat-SemiBold',
                            color: Color(0xFF062E4B),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 32, left: 16, right: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFFD3D3D3))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(width: 2, color: Color(0xFFD3D3D3)),
                          ),
                          labelText: 'Откуда',
                          labelStyle: TextStyle(
                              color: Color(0xFF062E4B),
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          fillColor: Color(0xFFFFFFFF),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18, left: 16, right: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFFD3D3D3))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(width: 2, color: Color(0xFFD3D3D3)),
                          ),
                          labelText: 'Куда',
                          labelStyle: TextStyle(
                              color: Color(0xFF062E4B),
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          fillColor: Color(0xFFFFFFFF),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 26, right: 37),
                      child: Text(
                        "Вид передачи:",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Montserrat-SemiBold',
                            color: Color(0xFF062E4B),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 12, right: 48),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: document,
                              activeColor: const Color(0xFFFFA51C),
                              side: const BorderSide(color: Color(0xFFFFA51C)),
                              onChanged: (bool? value) {
                                setState(() {
                                  document = value!;
                                });
                              }),
                          const Text(
                            "Документ",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                color: Color(0xFF062E4B),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Checkbox(
                              value: bigCargo,
                              activeColor: const Color(0xFFFFA51C),
                              side: const BorderSide(color: Color(0xFFFFA51C)),
                              onChanged: (bool? value) {
                                setState(() {
                                  bigCargo = value!;
                                });
                              }),
                          const Text(
                            "Большой груз",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                color: Color(0xFF062E4B),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 48),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: package,
                              activeColor: const Color(0xFFFFA51C),
                              side: const BorderSide(color: Color(0xFFFFA51C)),
                              onChanged: (bool? value) {
                                setState(() {
                                  package = value!;
                                });
                              }),
                          const Text(
                            "Посылка",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                color: Color(0xFF062E4B),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropdownButtonFormField2(
                              decoration: InputDecoration.collapsed(hintText: ''),
                              isExpanded: true,
                              hint: const Text(
                                'Критерии посылки:',
                                style: TextStyle(
                                    fontSize: 14,
                                  fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                color: Colors.black45,
                              ),
                              iconSize: 30,
                              buttonHeight: 60,
                              scrollbarAlwaysShow: true,
                              buttonDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xFFFFA51C),
                                  width: 2
                                ),
                              ),
                              buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              items: items
                                  .map((item) =>
                                  DropdownMenuItem<String>(
                                    value: item,
                                    child: Row(
                                      children: [
                                        Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    )
                                  ))
                                  .toList(),
                              validator: (value) {
                                if (value == null) {
                                  return 'Please select gender.';
                                }
                              },
                              onChanged: (value) {
                                //Do something when changing the item if you want.
                              },
                              onSaved: (value) {
                                selectedValue = value.toString();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 27, left: 17, right: 37),
                      child: Text(
                        "Дополнительные услуги:",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Montserrat-SemiBold',
                            color: Color(0xFF062E4B),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12, right: 48, top: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: ransom,
                              activeColor: const Color(0xFFFFA51C),
                              side: const BorderSide(color: Color(0xFFFFA51C)),
                              onChanged: (bool? value) {
                                setState(() {
                                  ransom = value!;
                                });
                              }),
                          const Text(
                            "Выкуп",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                color: Color(0xFF062E4B),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18, left: 16, right: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFFD3D3D3))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                            BorderSide(width: 2, color: Color(0xFFD3D3D3)),
                          ),
                          labelText: 'Сумма выкупа:',
                          labelStyle: TextStyle(
                              color: Color(0xFF062E4B),
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          fillColor: Color(0xFFFFFFFF),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18, left: 16, right: 16),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 6,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFFD3D3D3))),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                            BorderSide(width: 2, color: Color(0xFFD3D3D3)),
                          ),
                          hintText: 'Примечание:',
                          labelStyle: TextStyle(
                              color: Color(0xFF062E4B),
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                          fillColor: Color(0xFFFFFFFF),
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 20, left: 17, right: 37),
                      child: Text(
                        "Способ доставки:",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Montserrat-SemiBold',
                            color: Color(0xFF062E4B),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 5, left: 3, right: 26),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: fromDoorToDoor,
                              activeColor: const Color(0xFFFFA51C),
                              side: const BorderSide(color: Color(0xFFFFA51C)),
                              onChanged: (bool? value) {
                                setState(() {
                                  fromDoorToDoor = value!;
                                });
                              }),
                          const Text(
                            "От двери до двери",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                color: Color(0xFF062E4B),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                          Spacer(),
                          Checkbox(
                              value: fromOfficeToAddress,
                              activeColor: const Color(0xFFFFA51C),
                              side: const BorderSide(color: Color(0xFFFFA51C)),
                              onChanged: (bool? value) {
                                setState(() {
                                  fromOfficeToAddress = value!;
                                });
                              }),
                          const Text(
                            "С офиса до адреса",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                color: Color(0xFF062E4B),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, right: 48),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: fromOfficeToOffice,
                              activeColor: const Color(0xFFFFA51C),
                              side: const BorderSide(color: Color(0xFFFFA51C)),
                              onChanged: (bool? value) {
                                setState(() {
                                  fromOfficeToOffice = value!;
                                });
                              }),
                          const Text(
                            "С офиса до офиса",
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                color: Color(0xFF062E4B),
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)),
                          color: Color(0xB3FFEA94),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25, right: 18),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: const Text(
                                  "Итого:",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'Montserrat-SemiBold',
                                      color: Color(0xFF062E4B),
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25, top: 25),
                                child: const Text(
                                  "Посылка:",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF062E4B),
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25, top: 7, right: 18),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "До 1 кг (не выше 25см*25см*25см)",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Montserrat-Regular',
                                          color: Color(0xFF062E4B),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Spacer(),
                                    Text(
                                      "200 сом",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Montserrat-Regular',
                                          color: Color(0xFF062E4B),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, top: 15),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 2,
                                  color: Color(0x80D3D3D3),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25, top: 25),
                                child: const Text(
                                  "Способ доставки:",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF062E4B),
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25, top: 7, right: 18),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "От двери до двери",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Montserrat-Regular',
                                          color: Color(0xFF062E4B),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Spacer(),
                                    Text(
                                      "150 сом",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: 'Montserrat-Regular',
                                          color: Color(0xFF062E4B),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24, top: 15),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 2,
                                  color: Color(0x80D3D3D3),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25, top: 26, right: 18),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Стоимость услуги:",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat-SemiBold',
                                          color: Color(0xFF062E4B),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Spacer(),
                                    Text(
                                      "350 сом",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Montserrat-SemiBold',
                                          color: Color(0xFF062E4B),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 25, left: 14, bottom: 30),
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
                                          // Navigator.push(context,
                                          //     MaterialPageRoute(builder: (context) {
                                          //       return const CargoInformationPage();
                                          //     }));
                                        }),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
