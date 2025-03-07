import 'dart:ui';

import 'package:all_projects/Excahnge/widgets/main_bar.dart';
import 'package:all_projects/Wallet/Screens/profile.dart';
import 'package:all_projects/Wallet/Screens/swap.dart';
import 'package:all_projects/Wallet/Screens/wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../CLOUD/app.dart';
import '../../Learning app/widgets/main_bar.dart';
import '../../MOVIES/App.dart';
import '../../Market app/widgets/main_bar.dart';
import '../../Taxi/screens/login_page.dart';
import '../../VPS/app.dart';
import '../../Video Editor/UI/home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Список виджетов для каждой вкладки
  final List<Widget> _widgetOptions = <Widget>[
    ProfileScreen(),
    SwapScreen(),
    WalletScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          Positioned(
              bottom: 10,
              right: 10,
              left: 10,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              _onItemTapped(0);
                            },
                            onLongPress: () {
                              HapticFeedback.heavyImpact();

                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 30.0),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: ListView(
                                              // mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  Login()),
                                                        );
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(20),
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Colors.blue,
                                                                  Colors.amberAccent
                                                                ],
                                                                // Цвета градиента
                                                                begin:
                                                                    Alignment.topLeft,
                                                                // Начало градиента
                                                                end: Alignment
                                                                    .bottomRight, // Конец градиента
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'TAXI',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  MainScreenLearning()),
                                                        );
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(20),
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Colors.green,
                                                                  Colors.purpleAccent
                                                                ],
                                                                // Цвета градиента
                                                                begin:
                                                                    Alignment.topLeft,
                                                                // Начало градиента
                                                                end: Alignment
                                                                    .bottomRight, // Конец градиента
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'LEARNING',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  HomeWidget()),
                                                        );
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(20),
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Colors.redAccent,
                                                                  Colors.amber
                                                                ],
                                                                // Цвета градиента
                                                                begin:
                                                                    Alignment.topLeft,
                                                                // Начало градиента
                                                                end: Alignment
                                                                    .bottomRight, // Конец градиента
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'VIDEO EDITOR',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  MainScreenMarket()),
                                                        );
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(20),
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Colors.orange,
                                                                  Colors.pink
                                                                ],
                                                                // Цвета градиента
                                                                begin:
                                                                    Alignment.topLeft,
                                                                // Начало градиента
                                                                end: Alignment
                                                                    .bottomRight, // Конец градиента
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'MARKET',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  MainScreenExchange()),
                                                        );
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(20),
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Colors.purple,
                                                                  Colors.pink
                                                                ],
                                                                // Цвета градиента
                                                                begin:
                                                                    Alignment.topLeft,
                                                                // Начало градиента
                                                                end: Alignment
                                                                    .bottomRight, // Конец градиента
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'EXCHANGE',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  MainScreenLearning()),
                                                        );
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(20),
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Colors.red,
                                                                  Colors.yellow
                                                                ],
                                                                // Цвета градиента
                                                                begin:
                                                                    Alignment.topLeft,
                                                                // Начало градиента
                                                                end: Alignment
                                                                    .bottomRight, // Конец градиента
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'LEARNING',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight.w400,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        // Navigator.pushReplacement(
                                                        //   context,
                                                        //   MaterialPageRoute(builder: (context) => CloudApp()),
                                                        // );
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(20),
                                                              gradient: LinearGradient(
                                                                colors: [Colors.orange, Colors.redAccent], // Цвета градиента
                                                                begin: Alignment.topLeft, // Начало градиента
                                                                end: Alignment.bottomRight, // Конец градиента
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'CLOUD',
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(builder: (context) => AppMovies()),
                                                        );
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(20),
                                                              gradient: LinearGradient(
                                                                colors: [Colors.lime, Colors.pink], // Цвета градиента
                                                                begin: Alignment.topLeft, // Начало градиента
                                                                end: Alignment.bottomRight, // Конец градиента
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'MOVIE',
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pushReplacement(
                                                          context,
                                                          MaterialPageRoute(builder: (context) => AppVps()),
                                                        );
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 100,
                                                            height: 100,
                                                            decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius.circular(20),
                                                              gradient: LinearGradient(
                                                                colors: [Colors.amberAccent, Colors.green], // Цвета градиента
                                                                begin: Alignment.topLeft, // Начало градиента
                                                                end: Alignment.bottomRight, // Конец градиента
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'VPS',
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 20,),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0,
                                              vertical: 20,
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                height: 45,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      100),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'HOME',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Image.asset('assets/кошелек.png'),
                          ),
                          InkWell(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              _onItemTapped(1);
                            },
                            child: Image.asset('assets/карта.png'),
                          ),
                          InkWell(
                            onTap: () {
                              HapticFeedback.lightImpact();
                              _onItemTapped(2);
                            },
                            child: Image.asset('assets/перевод.png'),
                          ),
                          InkWell(
                            onTap: () {
                              HapticFeedback.lightImpact();

                            },
                            child: Image.asset('assets/la_signal.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   left: 0,
          //   top: 600,
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10), // Устанавливаем силу размытия
          //     child: Container(
          //       width: double.infinity,
          //       height: 60,
          //       decoration: BoxDecoration(
          //         color: Colors.transparent, // Прозрачный цвет
          //         borderRadius: BorderRadius.circular(25),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
