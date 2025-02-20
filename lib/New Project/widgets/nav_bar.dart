import 'package:all_projects/Market%20app/widgets/main_bar.dart';
import 'package:all_projects/Taxi/screens/login_page.dart';
import 'package:all_projects/VPS/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Cryptology/widgets/main_bar.dart';
import '../../Excahnge/widgets/main_bar.dart';
import '../../MOVIES/App.dart';
import '../../Video Editor/UI/home.dart';
import '../../Wallet/Screens/wallet.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;
  final Function()? onLongPress; // Made onLongPress nullable

  const NavBar({
    super.key,
    required this.onTap,
    required this.pageIndex,
    this.onLongPress, // Removed required to make it optional
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      elevation: 0.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 40,
          color: Colors.black,
          child: Row(
            children: [
              navItem(
                Icons.pie_chart,
                pageIndex == 0,
                onTap: () => onTap(0),
                onLongPress: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 600,
                        padding: EdgeInsets.all(16.0),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      HapticFeedback.lightImpact();

                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => Login()),
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
                                              colors: [Colors.blue, Colors.amberAccent], // Цвета градиента
                                              begin: Alignment.topLeft, // Начало градиента
                                              end: Alignment.bottomRight, // Конец градиента
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'TAXI',
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
                                      HapticFeedback.lightImpact();

                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MainScreenCryptology()),
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
                                              colors: [Colors.green, Colors.purpleAccent], // Цвета градиента
                                              begin: Alignment.topLeft, // Начало градиента
                                              end: Alignment.bottomRight, // Конец градиента
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'CRYPTOLOGY',
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
                                      HapticFeedback.lightImpact();

                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => HomeWidget()),
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
                                              colors: [Colors.redAccent, Colors.amber], // Цвета градиента
                                              begin: Alignment.topLeft, // Начало градиента
                                              end: Alignment.bottomRight, // Конец градиента
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'VIDEO EDITOR',
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
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      HapticFeedback.lightImpact();

                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MainScreenMarket()),
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
                                              colors: [Colors.orange, Colors.pink], // Цвета градиента
                                              begin: Alignment.topLeft, // Начало градиента
                                              end: Alignment.bottomRight, // Конец градиента
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'MARKET',
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
                                      HapticFeedback.lightImpact();

                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => WalletScreen()),
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
                                              colors: [Colors.purple, Colors.pink], // Цвета градиента
                                              begin: Alignment.topLeft, // Начало градиента
                                              end: Alignment.bottomRight, // Конец градиента
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'WALLET',
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
                                      HapticFeedback.lightImpact();

                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MainScreenExchange()),
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
                                              colors: [Colors.red, Colors.yellow], // Цвета градиента
                                              begin: Alignment.topLeft, // Начало градиента
                                              end: Alignment.bottomRight, // Конец градиента
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'EXCHANGE',
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
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      HapticFeedback.lightImpact();

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
                                      HapticFeedback.lightImpact();

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
                                      HapticFeedback.lightImpact();

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
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 10,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    HapticFeedback.lightImpact();

                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius:
                                      BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'HOME',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
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
              ),
              navItem(
                Icons.book_online_rounded,
                pageIndex == 1,
                onTap: () => onTap(1),
              ),
              navItem(
                Icons.account_circle_outlined,
                pageIndex == 2,
                onTap: () => onTap(2),
              ),
              navItem(
                Icons.find_replace,
                pageIndex == 3,
                onTap: () => onTap(3),
              ),
              navItem(
                Icons.settings,
                pageIndex == 4,
                onTap: () => onTap(4),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget navItem(IconData icon, bool isSelected,
      {Function()? onTap, Function()? onLongPress}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          // Trigger vibration feedback on tap
          HapticFeedback.lightImpact();

          // Call the provided onTap function, if any
          if (onTap != null) {
            onTap();
          }
        },
        onLongPress: () {
          // Trigger vibration feedback on long press
          HapticFeedback.heavyImpact();

          // Call the provided onLongPress function, if any
          if (onLongPress != null) {
            onLongPress();
          }
        },
        child: Icon(
          icon,
          color: isSelected
              ? Color.fromRGBO(119, 71, 253, 1)
              : Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
