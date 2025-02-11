import 'package:flutter/material.dart';

import 'Learning app/widgets/main_bar.dart';
import 'Taxi/screens/adreses.dart';
import 'Taxi/screens/for_driver.dart';
import 'Taxi/screens/login_page.dart';
import 'Taxi/screens/main_page.dart';
import 'Taxi/screens/reviews.dart';
import 'Taxi/screens/search_driver_page.dart';
import 'Taxi/screens/take_review.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Reviews(),
      debugShowCheckedModeBanner: false,
    );
  }
}
