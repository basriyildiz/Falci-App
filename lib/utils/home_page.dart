import 'dart:ui';

import 'package:falci_app/utils/cards.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      routeName: "/",
      seconds: 3,
      navigateAfterSeconds: new AfterSplash(),
      title: new Text(
        'Burç Uygulamasına Hoşgeldin',
        style: new TextStyle(
            fontWeight: FontWeight.bold, fontSize: 32.0, color: Colors.white),
        textAlign: TextAlign.center,
      ),
      gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFF8E2DE2), Color(0xFF4A00E0)]),
      loadingText:
          Text("Lütfen Bekleyiniz...", style: TextStyle(color: Colors.white60)),
      backgroundColor: Colors.white,
      loaderColor: Colors.white,
    );
  }
}

class AfterSplash extends StatefulWidget {
  @override
  _AfterSplashState createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A00E0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        centerTitle: true,
        title: Text("Günün Falı"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/falci.png",
              height: 150,
            ),
            SizedBox(
              height: 30,
            ),
            Cards(),
          ],
        ),
      ),
    );
  }
}
