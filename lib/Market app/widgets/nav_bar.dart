import 'package:all_projects/Excahnge/widgets/main_bar.dart';
import 'package:flutter/material.dart';

import '../../CLOUD/app.dart';
import '../../Learning app/widgets/main_bar.dart';
import '../../MOVIES/App.dart';
import '../../Taxi/screens/login_page.dart';
import '../../VPS/app.dart';
import '../../Video Editor/UI/home.dart';
import '../../Wallet/Components/home_bar.dart';

class NavBarMarket extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBarMarket({
    super.key,
    required this.onTap,
    required this.pageIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: BottomAppBar(
        color: Colors.white,
        elevation: 0.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 60,
            color: Colors.white,
            child: Row(
              children: [
                navItem(
                  Icons.home,
                  pageIndex == 0,
                  onTap: () => onTap(0),
                  onLongPress: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: EdgeInsets.all(16.0),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
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
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(builder: (context) => MainScreenLearning()),
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
                                            'LEARNING',
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
                                            'EXCANGE',
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
                                          MaterialPageRoute(builder: (context) => HomeScreen()),
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
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(builder: (context) => MainScreenLearning()),
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
                                            'LEARNING',
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
                  Icons.bar_chart,
                  pageIndex == 1,
                  onTap: () => onTap(1),
                ),
                navItem(
                  Icons.add,
                  pageIndex == 2,
                  onTap: () => onTap(2),
                ),
                navItem(
                  Icons.message,
                  pageIndex == 3,
                  onTap: () => onTap(3),
                ),
                navItem(
                  Icons.bookmark_add,
                  pageIndex == 4,
                  onTap: () => onTap(4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget navItem(IconData icon, bool isSelected, {Function()? onTap, Function()? onLongPress}) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Icon(
          icon,
          size: 26,
          color: isSelected ? Color.fromRGBO(252, 4, 4, 1) : Colors.black.withOpacity(0.4),
        ),
      ),
    );
  }
}
