import 'package:all_projects/CLOUD/models/main_bar.dart';
import 'package:flutter/material.dart';



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
