import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_tz/show_phone_number_view.dart';
import 'package:project_tz/widgets/singin_button.dart';

Future<void> showSingInBannerWidget(BuildContext context, String title) {
  TextEditingController controller = TextEditingController();

  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      barrierColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
      ),
      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height - 54.0),
      builder: (context) {
        return Column(
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
                     const Expanded(child:  Text(
                       'Войдите или зарегистрируйтесь',
                       textAlign: TextAlign.center,
                       textScaleFactor: 1,
                       style: TextStyle(
                         fontFamily: 'SuisseIntl',
                       ),
                     ))
                    ],
                  ),
                ],
              ),
            ),
            Divider(height: 2.0),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color.fromRGBO(200, 200, 200, 1))),
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Страна/регион',
                                textScaleFactor: 1,
                                style: TextStyle(
                                    color: Color.fromRGBO(94, 94, 94, 1),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    height: 1.33,
                                    fontFamily: 'SuisseIntl'),
                              ),
                              Text(
                                'Россия (+7)',
                                textScaleFactor: 1,
                                style: TextStyle(
                                    color: Color.fromRGBO(44, 44, 44, 1),
                                    fontSize: 16,
                                    height: 1.25,
                                    fontFamily: 'SuisseIntl'),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 26, bottom: 24),
                            child: SvgPicture.asset(
                              'assets/down.svg',
                              height: 8,
                              width: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      height: 56,
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      alignment: Alignment.center,
                      child: TextField(
                        controller: controller,
                        onChanged: (_) {},
                        maxLength: 13,
                        decoration: InputDecoration(
                          hintText: 'Номер телефона',
                          counterText: '',
                          hintStyle: TextStyle(
                              color: const Color.fromRGBO(94, 94, 94, 1),
                              fontSize: 16 / MediaQuery.of(context).textScaleFactor,
                              height: 1.25,
                              fontFamily: 'SuisseIntl'),
                          suffixIconConstraints: const BoxConstraints(
                            maxHeight: 24,
                            maxWidth: 24,
                          ),
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24, left: 24),
              child: Text(
                  'Мы позвоним вам или отправим SMS, чтобы подтвердить номер телефона. Применяются '
                      'стандартные условия вашего тарифа на прием сообщений и передачу данных.',
                  textScaleFactor: 1,
                  style: TextStyle(
                      color: Color.fromRGBO(94, 94, 94, 1),
                      height: 1.285,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'SuisseIntl',
                      letterSpacing: 0.25)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: MaterialButton(
                height: 48,
                color: const Color.fromRGBO(224, 224, 224, 1),
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                onPressed: () async {
                  await showPhoneNumberView(context);
                },
                child: const Center(
                  child: Text(
                    'Продолжить',
                    textScaleFactor: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SuisseIntl',
                      fontSize: 16,
                      height: 1.25,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: const [
                  Flexible(
                      child: Divider(
                        color: Color.fromRGBO(94, 94, 94, 1),
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                    child: Text(
                      'или',
                      textScaleFactor: 1,
                      style: TextStyle(
                        color: Color.fromRGBO(94, 94, 94, 1),
                        fontWeight: FontWeight.w300,
                        fontFamily: 'SuisseIntl',
                        fontSize: 12,
                        height: 1.33,
                      ),
                    ),
                  ),
                  Flexible(
                      child: Divider(
                        color: Color.fromRGBO(94, 94, 94, 1),
                      )),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  SingInButton('assets/email.svg', 'С помощью эл. почты', () => null),
                  const SizedBox(height: 10,),
                  SingInButton('assets/apple.svg', 'Продолжить с Apple', () => null),
                  const SizedBox(height: 10,),
                  SingInButton('assets/google.svg', 'Продолжить через Google', () => null),
                  const SizedBox(height: 10,),
                  SingInButton('assets/facebook.svg', 'Продолжить через Facebook', () => null)
                ],
              ),
            )
          ],
        );
      });
}
