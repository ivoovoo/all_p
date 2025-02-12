import 'package:all_projects/Excahnge/Pages/exchange_screen.dart';
import 'package:flutter/material.dart';

import 'CLOUD/app.dart';
import 'Cryptology/widgets/main_bar.dart';
import 'Excahnge/widgets/main_bar.dart';
import 'Learning app/widgets/main_bar.dart';
import 'MOVIES/App.dart';
import 'Market app/widgets/main_bar.dart';
import 'New Project/screens/browser.dart';
import 'New Project/screens/key_words.dart';
import 'New Project/screens/receive.dart';
import 'New Project/widgets/main_bar.dart';
import 'Taxi/screens/adreses.dart';
import 'Taxi/screens/for_driver.dart';
import 'Taxi/screens/login_page.dart';
import 'Taxi/screens/main_page.dart';
import 'Taxi/screens/reviews.dart';
import 'Taxi/screens/search_driver_page.dart';
import 'Taxi/screens/take_review.dart';
import 'VPS/UI/project.dart';
import 'VPS/app.dart';
import 'Video Editor/UI/home.dart';
import 'Wallet/Components/home_bar.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
