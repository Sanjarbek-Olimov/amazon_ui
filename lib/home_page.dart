import 'package:amazon_ui/current_version/splash_page.dart';
import 'package:amazon_ui/old_version/amazon_old.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon Shopping UI"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              height: MediaQuery.of(context).size.width*0.1,
              minWidth: MediaQuery.of(context).size.width*0.5,
              onPressed: () {
                Navigator.pushNamed(context, AmazonOld.id);
              },
              shape: const StadiumBorder(),
              child: const Text("Old Version", style: TextStyle(color: Colors.white, fontSize: 18),),
            ),
            MaterialButton(
              color: Colors.blue,
              height: MediaQuery.of(context).size.width*0.1,
              minWidth: MediaQuery.of(context).size.width*0.5,
              onPressed: () {
                Navigator.pushNamed(context, SplashPage.id);
              },
              shape: const StadiumBorder(),
              child: const Text("Current Version", style: TextStyle(color: Colors.white, fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }
}
