import 'package:all_projects/CLOUD/Ui/search_me.dart';
import 'package:flutter/material.dart';

import 'CLOUD/Ui/cloud.dart';
import 'CLOUD/Ui/files.dart';
import 'CLOUD/Ui/home.dart';
import 'CLOUD/models/main_bar.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchMe(),
      debugShowCheckedModeBanner: false,
    );
  }
}
