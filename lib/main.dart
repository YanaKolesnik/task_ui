import 'package:flutter/material.dart';
import 'package:project_tz/show_banner_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 32, bottom: 12),
                height: 70,
                child: const Text(
                  'Ваш профиль',
                  textScaleFactor: 1,
                  style:
                  TextStyle(fontSize: 22, fontFamily: 'SuisseIntl'),
                ),
              ),
              Container(
                height: 64,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: const Text(
                  'Войдите в аккаунт и начните поддерживать  и создавать проекты.',
                  textScaleFactor: 1,
                  style: TextStyle(
                      fontSize: 14, fontFamily: 'SuisseIntl'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: MaterialButton(
                  height: 48.0,
                  color: const Color.fromRGBO(255, 125, 90, 1),
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  onPressed: () async { await showSingInBannerWidget(context, 'Войдите или зарегистрируйтесь');},
                  child: const Center(
                    child: Text(
                      'Войти',
                      textScaleFactor: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SuisseIntl',
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        height: 1.25,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Row(
                  children: const [
                    Text(
                      'Нет аккаунта?',
                      textScaleFactor: 1,
                      style: TextStyle(
                        fontFamily: 'SuisseIntl',
                        color: Color.fromRGBO(94, 94, 94, 1),
                        fontWeight: FontWeight.w300,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(width: 6.0),
                    InkWell(
                      child: Text(
                        'Зарегистрируйтесь',
                        textScaleFactor: 1,
                        style: TextStyle(
                          color: Color.fromRGBO(44, 44, 44, 1),
                          fontFamily: 'SuisseIntl',
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.underline,
                          fontSize: 14.0,
                          letterSpacing: 0.25
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
