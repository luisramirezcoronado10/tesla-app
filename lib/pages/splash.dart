import 'package:flutter/material.dart';
import 'package:tesla_demo/pages/home.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0B0C0C),
        body: Stack(
          children: [
            logo(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: button(),
            ),
          ],
        ),
      ),
    );
  }

  Widget logo() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo-tesla-white.png',
            height: 24,
          ),
        ],
      ),
    );
  }

  Widget button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 635),
          height: 90,
          width: 180,
          decoration: BoxDecoration(
            color: Color(0xffE82127),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
          ),
          child: Icon(
            Icons.arrow_forward_sharp,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
