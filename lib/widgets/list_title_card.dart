import 'package:flutter/material.dart';

class ListTitleWidget extends StatelessWidget {
  final String logo;
  final String job;
  final String company;
  final String price;
  const ListTitleWidget({
    Key key,
    this.logo,
    this.job,
    this.company,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        alignment: Alignment.center,
        height: 75,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 20),
              color: Colors.grey[300],
              blurRadius: 30,
            ),
          ],
        ),
        child: ListTile(
          leading: Container(
            width: 40,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(logo)),
            ),
          ),
          title: Text(
            job,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              letterSpacing: -1,
            ),
          ),
          subtitle: Text(company),
          trailing: Text.rich(
            TextSpan(
              text: '\$$price',
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: -1),
              children: [
                TextSpan(
                  text: '/hr',
                  style: TextStyle(color: Colors.purple),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
