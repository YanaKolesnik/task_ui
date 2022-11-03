import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

Future<void> showPhoneNumberView(BuildContext context) {
  final double scaleFactor = MediaQuery.of(context).textScaleFactor;

  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      barrierColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
      ),
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height - 54,
          child: Column(
            children: [
              SizedBox(
                height: 60,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 4,
                      width: 36,
                      margin: const EdgeInsets.only(top: 6, bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color.fromRGBO(209, 209, 214, 1),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 31),
                            child: SvgPicture.asset(
                              'assets/close.svg',
                              height: 12,
                              width: 12,
                            ),
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            'Подтвердите номер',
                            textScaleFactor: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'SuisseIntl',
                            ),
                          ),
                        ),
                        const SizedBox(width: 43)
                      ],
                    ),
                  ],
                ),
              ),
              Divider(height: 2),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 24),
                        child: Text(
                          'Введите код, отправленный на  +7 960 114-51-31:',
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Color.fromRGBO(44, 44, 44, 1),
                            fontFamily: 'SuisseIntl',
                            fontSize: 14,
                            height: 1.285,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 24, left: 24),
                        child: PinCodeTextField(
                          appContext: context,
                          length: 4,
                          autoFocus: true,
                          keyboardType: TextInputType.number,
                          mainAxisAlignment: MainAxisAlignment.start,
                          cursorColor: const Color.fromRGBO(28, 28, 40, 1),
                          cursorWidth: 1,
                          cursorHeight: 16,
                          textStyle: TextStyle(
                            color: const Color.fromRGBO(28, 28, 40, 1),
                            fontFamily: 'SuisseIntl',
                            fontSize: 16 / scaleFactor,
                            letterSpacing: 0.15,
                            fontWeight: FontWeight.w400,
                          ),
                          pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(8),
                              fieldOuterPadding: const EdgeInsets.only(right: 6),
                              fieldHeight: 52,
                              fieldWidth: 46,
                              borderWidth: 1,
                              activeColor: const Color.fromRGBO(200, 200, 200, 1),
                              selectedColor: const Color.fromRGBO(28, 28, 40, 1),
                              inactiveColor: const Color.fromRGBO(
                                200,
                                200,
                                200,
                                1,
                              )),
                          onChanged: (String value) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 12, 0, 16),
                        child: Row(
                          children: [
                            const Text(
                              'Не получили код?',
                              textScaleFactor: 1,
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                fontFamily: 'SuisseIntl',
                                height: 1.285,
                              ),
                            ),
                            const SizedBox(width: 6),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Отправить еще раз',
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: Color.fromRGBO(44, 44, 44, 1),
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.underline,
                                  fontSize: 14,
                                  fontFamily: 'SuisseIntl',
                                  height: 1.285,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 24, bottom: 36),
                        child: InkWell(
                          onTap: () {},
                          child: const Text(
                            'Другие варианты',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color.fromRGBO(44, 44, 44, 1),
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.underline,
                              fontFamily: 'SuisseIntl',
                              fontSize: 14,
                              height: 1.285,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                        child: Material(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                          elevation: 6,
                          color: Colors.white,
                          child: Container(
                            height: 60,
                            margin: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 14),
                                  child: SvgPicture.asset(
                                    'assets/bell.svg',
                                  ),
                                ),
                                const Expanded(
                                  child: Text(
                                    'Мы отправили вам SMS с кодом подтверждения.',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                        fontFamily: 'SuisseIntl',
                                        color: Color.fromRGBO(44, 44, 44, 1),
                                        height: 1.285,
                                        letterSpacing: 0.25),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
