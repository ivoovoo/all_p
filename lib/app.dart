import 'package:all_projects/CLOUD/Ui/search_me.dart';
import 'package:all_projects/Excahnge/widgets/main_bar.dart';
import 'package:flutter/material.dart';

import 'CLOUD/Ui/cloud.dart';
import 'CLOUD/Ui/files.dart';
import 'CLOUD/Ui/home.dart';
import 'CLOUD/models/main_bar.dart';
import 'Cryptology/widgets/main_bar.dart';
import 'Excahnge/Pages/receive_screen.dart';
import 'Excahnge/Pages/send_screen.dart';
import 'MOVIES/App.dart';
import 'New Project/widgets/main_bar.dart';
import 'Taxi/screens/adreses.dart';
import 'Taxi/screens/for_driver.dart';
import 'Taxi/screens/login_page.dart';
import 'Taxi/screens/main_page.dart';
import 'Taxi/screens/reviews.dart';
import 'Taxi/screens/search_driver_page.dart';
import 'Taxi/screens/take_review.dart';
import 'Wallet/Components/home_bar.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreenCloud(),
      debugShowCheckedModeBanner: false,
    );
  }
}
