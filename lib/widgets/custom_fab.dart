import 'package:coronavirusapp/constants.dart';
import 'package:flutter/material.dart';

class FabButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  FabButton({this.color, this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: 5.0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(height: 15.0),
          Text(
            title,
            style: kSubtitleStyle.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
