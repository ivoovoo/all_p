import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';
import 'main_page.dart';

class Login extends StatefulWidget {


  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final List<String> texts = [
    "Taxi of your dream",
    "Life",
    "Future",
    "Love",
    "Now",
  ];

  int _currentIndex = 0; // Индекс текущего текста
  late Timer _timer; // Таймер для смены текста

  @override
  void initState() {
    super.initState();
    // Запускаем таймер для смены текста каждые 3 секунды
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % texts.length; // Меняем текст
      });
    });
  }
  @override
  void dispose() {
    _timer.cancel(); // Останавливаем таймер при уничтожении виджета
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset(
              'assets/bg.svg',
              height: MediaQuery.of(context).size.height / 1.7,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/car.png',
              height: MediaQuery.of(context).size.height / 1.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SafeArea(
              top: true,
              bottom: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Center(child: SvgPicture.asset('assets/logo.svg')),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: 50, // Высота контейнера для текста
                              alignment: Alignment.center,
                              child: AnimatedSwitcher(
                                duration: Duration(milliseconds: 500), // Анимация смены текста
                                transitionBuilder: (Widget child, Animation<double> animation) {
                                  return FadeTransition(opacity: animation, child: child);
                                },
                                child: Text(
                                  texts[_currentIndex], // Текущий текст
                                  key: ValueKey<String>(texts[_currentIndex]), // Уникальный ключ для анимации
                                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400,color: Colors.white),
                                ),
                              ),
                            ),
                            Text(
                              'Comfortable rides around the city',
                              style: TextStyle(
                                fontFamily: 'font',
                                fontSize: 16,
                                color: Colors.white,
                                fontVariations: [
                                  FontVariation.opticalSize(56),
                                  FontVariation.width(128),
                                  FontVariation.weight(500),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: LoginButton(
                              onTap: () {
                                Navigator.of(context).push(CupertinoPageRoute(builder: (ctx) {
                                  return MainPage();
                                }));
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Driver',
                        style: TextStyle(
                          fontFamily: 'font',
                          fontSize: 16,
                          color: Colors.white,
                          fontVariations: [
                            FontVariation.opticalSize(56),
                            FontVariation.width(128),
                            FontVariation.weight(600),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          colors: [
            Color(0xffE9BC32),
            Color(0xffE9BC32),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const RadialGradient(
                colors: [
                  Color(0x00FFFFFF),
                  Color(0xB2FFFFFF),
                ],
                radius: 9,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                textAlign: TextAlign.center,
                'Traveller',
                style: TextStyle(
                  fontFamily: 'font',
                  fontSize: 16,
                  color: blackColor,
                  fontVariations: [
                    FontVariation.opticalSize(56),
                    FontVariation.width(128),
                    FontVariation.weight(600),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
