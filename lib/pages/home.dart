import 'package:flutter/material.dart';
import 'package:tesla_demo/widgets/feature.dart';
import 'package:tesla_demo/widgets/selector_color.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            navBar(),
            content(),
            SizedBox(height: 67),
            actions(),
          ],
        ),
      ),
    );
  }

  Widget navBar() {
    return Container(
      margin: const EdgeInsets.only(
        top: 28,
        left: 26,
        right: 37,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/icon-tesla.png',
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Model S',
                style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Color(0xff707070),
              ),
            ],
          ),
          Icon(Icons.menu),
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      margin: const EdgeInsets.only(
        top: 70,
        left: 26,
        right: 37,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/model-tesla.png',
            width: 280,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/icon-360.png',
                width: 36,
              ),
              SizedBox(height: 80),
              Row(
                children: [
                  SelectorColor(color: Color(0xffE82127)),
                  SizedBox(width: 25),
                  SelectorColor(color: Color(0xffC8C9C9)),
                  SizedBox(width: 25),
                  SelectorColor(color: Color(0xff0B0C0C)),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            'Model S',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'The Tesla Model S is a high-end electric liftback. This model follows the business plan of Tesla Motors to expand its market towards more affordable vehicles than its sports Tesla Roadster, of which 2,300 units were sold.',
            style: TextStyle(fontSize: 14, color: Color(0xff707070)),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Feature(
                name: '1.9s',
                description: '0-60 mph',
              ),
              Feature(
                name: '322mi',
                description: 'Range',
              ),
              Feature(
                name: 'AWD',
                description: 'Dual Motor',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget actions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 90,
          width: 176,
          child: Center(
            child: Text(
              'Test Drive',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        Container(
          height: 90,
          width: 184,
          decoration: BoxDecoration(
            color: Color(0xffE82127),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
            ),
          ),
          child: Center(
            child: Text(
              'Order Now',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
