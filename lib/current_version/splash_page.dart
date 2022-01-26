import 'dart:async';

import 'package:amazon_ui/current_version/current_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{
  bool _isVisible = true;
  void openPage(){
    Timer(const Duration(milliseconds: 600),(){
      setState(() {
        _isVisible = false;
      });
      Navigator.pushReplacementNamed(context, CurrentVersion.id);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 300),(){
      setState(() {
        _isVisible = false;
      });
    });
    openPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        opacity: _isVisible?1:0,
        duration: const Duration(milliseconds: 300),
        child: Center(
          child: Image.asset("assets/images/Amazon.png", width: MediaQuery.of(context).size.width*0.6,),
        ),
      ),
    );
  }
}
