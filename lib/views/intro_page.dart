import 'package:coronavirusapp/constants.dart';
import 'package:coronavirusapp/views/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 18.0,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/intro.png",
                fit: BoxFit.cover,
                height: 250.0,
              ),
              Spacer(),
              Text(
                "Save yourselft\nSave the world\n",
                style: kTitleStyle.copyWith(fontSize: 25.0),
                textAlign: TextAlign.center,
              ),
              Text(
                "Coronavirus desease (COVID-19) is an infectious disease caused by a new virus.",
                style: kSubtitleStyle,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Container(
                width: double.infinity,
                height: 60.00,
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kGreyAccentColor,
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.phone_android),
                      hintText: "phone number",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                height: 60.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  color: kPurpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Verification Code",
                    style: kSubtitleStyle.copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
