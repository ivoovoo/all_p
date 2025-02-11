import 'package:flutter/material.dart';
import '../widgets/star_rating.dart';

class HomeMarket extends StatelessWidget {
  final int tab;
  const HomeMarket({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 330,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 0, 0, 1),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      Image.asset('assets/Ellipse 3.png'),
                    ],
                  ),
                  Text(
                    'Where would you\nlike to go?',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 38,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search CITY',
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color.fromRGBO(255, 0, 0, 1),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(height: 20,),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView(
                padding: EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Popular',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Recommennted',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Cost-effect',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Cost-effect',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 250,
                    height: 360,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Rectangle 3.png'),
                        // Укажите путь к вашему изображению
                        fit: BoxFit
                            .cover, // Масштабирует изображение, чтобы оно покрывало весь контейнер
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 10,
                            child: Container(
                              width: 42,
                              height: 42,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(252, 4, 4, 1),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.heart_broken,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Golden Gaten\Bridge',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  StarRating(rating: 4, size: 25),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '4.5 ( 352 review )',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // Image.asset('assets/person.png'),
                                  Text(
                                    'USDT 149',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 250,
                    height: 360,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Rectangle 3.png'),
                        // Укажите путь к вашему изображению
                        fit: BoxFit
                            .cover, // Масштабирует изображение, чтобы оно покрывало весь контейнер
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 10,

                            child: Container(
                              width: 42,
                              height: 42,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(252, 4, 4, 1),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.heart_broken,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Golden Gaten\Bridge',
                                style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  StarRating(rating: 4, size: 25),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '4.5 ( 352 review )',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  // Image.asset('assets/person.png'),
                                  Text(
                                    'USDT 149',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
