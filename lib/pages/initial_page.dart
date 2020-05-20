import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_finder_ui/pages/home_page.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        primary: false,
        padding: EdgeInsets.fromLTRB(30, 100, 60, 100),
        children: [
          SvgPicture.asset('assets/vector/person_vetor.svg'),
          Text(
            'Find a perfect\njob match',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: -2,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Finding your dream job is now much easier and fast like never before",
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 60,
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
              },
              child: Text(
                "Let's Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              color: Colors.black,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
