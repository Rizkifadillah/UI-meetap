import 'package:app_meetap/src/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class OnboardingPage extends StatelessWidget {
  final pages = [
    PageViewModel(
      pageColor: Colors.white,
      bubbleBackgroundColor: Colors.green,
      iconImageAssetPath: 'assets/img/logomeetap.png',
      title: Container(),
      body: Column(
        children: <Widget>[
          Text('Selamat Datang diMeetAp'),
          Text(
            'Efisian waktu mu dengan langsung\ntanya errormu diMeetAp.',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
            ),
          ),
        ],
      ),
      mainImage: Image.asset(
        'assets/img/one.png',
        width: 305.0,
        alignment: Alignment.bottomCenter,
      ),
      textStyle: TextStyle(color: Colors.black),
    ),
    PageViewModel(
      pageColor: Colors.white,
      bubbleBackgroundColor: Colors.green,
      iconImageAssetPath: 'assets/img/logomeetap.png',
      title: Container(),
      body: Column(
        children: <Widget>[
          Text('Kamu bisa langsung di remote'),
          Text(
            'Tanya-tanya di#MeetAp kamu bisa\nlangsung diremote oleh solver\nsampai error programmu solve .',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
            ),
          ),
        ],
      ),
      mainImage: Image.asset(
        'assets/img/dua.png',
        width: 285.0,
        alignment: Alignment.bottomCenter,
      ),
      textStyle: TextStyle(color: Colors.black),
    ),
    PageViewModel(
      pageColor: Colors.white,
      bubbleBackgroundColor: Colors.green,
      iconImageAssetPath: 'assets/img/logomeetap.png',
      iconColor: null,
      title: Container(),
      body: Column(
        children: <Widget>[
          Text('Tanya diforum kamu dibully !!!'),
          Text(
            'Kalau tanya-tanya di forum fb,\ntelegram ataupun forum lainnya kamu \nsering dibully, kalau di #MeetAp aman.',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
            ),
          ),
        ],
      ),
      mainImage: Image.asset(
        'assets/img/tiga.png',
        width: 285.0,
        alignment: Alignment.bottomCenter,
      ),
      textStyle: TextStyle(color: Colors.black),
    ),
    PageViewModel(
      iconColor: null,
      pageColor: Colors.white,
      bubbleBackgroundColor: Colors.green,
      iconImageAssetPath: 'assets/img/logomeetap.png',
      title: Container(),
      body: Column(
        children: <Widget>[
          Text('Yuk tanya langsung ke ahlinya'),
          Text(
            'Share error mu. Tanya langsung\ndengan para Solver, dan temukan solusinya.',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
            ),
          ),
        ],
      ),
      mainImage: Image.asset(
        'assets/img/empat.png',
        width: 285.0,
        alignment: Alignment.bottomCenter,
      ),
      textStyle: TextStyle(color: Colors.black),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            IntroViewsFlutter(
              pages,
              onTapDoneButton: (){
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) =>
                        new HomePage()));
              },
              showSkipButton: false,
              doneText: Text("Get Started",),
              pageButtonsColor: Colors.green,
              pageButtonTextStyles: new TextStyle(
                // color: Colors.indigo,
                fontSize: 16.0,
                fontFamily: "Regular",
              ),
            ),
            Positioned(
                top: 20.0,
                left: MediaQuery.of(context).size.width/2 - 50,
                child: Image.asset('assets/img/MeetAp.png', width: 100,)
            )
          ],
        ),
      ),
    );
  }
}