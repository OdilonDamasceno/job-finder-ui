import 'package:flutter/material.dart';
import 'package:job_finder_ui/widgets/card_widget.dart';
import 'package:job_finder_ui/widgets/list_title_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.png'),
                  radius: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            child: Text(
              'Discorver Jobs',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: -2,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 20),
                    color: Colors.grey[300],
                    blurRadius: 30,
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: 'Search job, company or intership',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    letterSpacing: -1,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  CardWidget(
                    color: Colors.black,
                    logo: 'assets/images/spotify_logo.png',
                    job: 'Product Manager',
                    price: '450',
                  ),
                  SizedBox(width: 20),
                  CardWidget(
                    color: Colors.white,
                    textColor: Colors.black,
                    logo: 'assets/images/google_logo.png',
                    job: 'UI/UX Designer',
                    price: '500',
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildSelect(Colors.grey[300]),
              buildSelect(Colors.black),
              buildSelect(Colors.grey[300]),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Best Jobs For You',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: -1,
              ),
            ),
          ),
          SizedBox(height: 10),
          ListTitleWidget(
            logo: 'assets/images/ibm_logo.png',
            company: 'IBM',
            job: 'Project Manager',
            price: '450',
          ),
          ListTitleWidget(
            logo: 'assets/images/google_logo.png',
            company: 'Google',
            job: 'Visual Designer',
            price: '500',
          ),
          ListTitleWidget(
            logo: 'assets/images/face_logo.png',
            company: 'Facebook',
            job: 'Senior Manager',
            price: '250',
          ),
        ],
      ),
    );
  }

  Container buildSelect(Color color) {
    return Container(
      width: 8,
      height: 8,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
    );
  }
}
