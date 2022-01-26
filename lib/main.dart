import 'package:amazon_ui/current_version/current_page.dart';
import 'package:amazon_ui/current_version/splash_page.dart';
import 'package:amazon_ui/old_version/amazon_old.dart';
import 'package:amazon_ui/old_version/amazon_old_2.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        AmazonOld.id: (context) => const AmazonOld(),
        AmazonOld2.id: (context) => const AmazonOld2(),
        SplashPage.id: (context) => const SplashPage(),
        CurrentVersion.id: (context) => const CurrentVersion()
      },
    );
  }
}