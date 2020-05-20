import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final String logo;
  final String job;
  final String price;
  final Color textColor;
  CardWidget({
    this.color,
    this.job,
    this.logo,
    this.price,
    this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 20),
            color: Colors.grey[300],
            blurRadius: 30,
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 30,
            child: SizedBox(
              height: 35,
              width: 35,
              child: Image.asset(
                logo,
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: 30,
            child: RichText(
              text: TextSpan(
                text: '$job\n\n',
                style: TextStyle(
                  fontSize: 20,
                  color: textColor,
                ),
                children: [
                  TextSpan(
                    text: '\$$price/hr',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
