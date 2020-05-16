import 'package:coronavirusapp/constants.dart';
import 'package:coronavirusapp/widgets/corona_chart.dart';
import 'package:coronavirusapp/widgets/custom_fab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kYellowAccentColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250.0,
                child: Stack(
                  children: [
                    Positioned(
                      top: -60.0,
                      left: -150.0,
                      child: CircleAvatar(
                        radius: 150.0,
                        backgroundColor: kYellowColor,
                      ),
                    ),
                    Positioned(
                      top: 150.0,
                      left: 18.0,
                      child: Text(
                        "We will defeat\nCoronavirus",
                        textAlign: TextAlign.center,
                        style: kTitleStyle.copyWith(fontSize: 23.0),
                      ),
                    ),
                    Positioned(
                      bottom: -10.0,
                      right: 20.0,
                      child: Image.asset(
                        "assets/doctorpng.png",
                        height: 200.0,
                      ),
                    ),
                    Positioned(
                      bottom: 100.0,
                      right: -50.0,
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundColor: kYellowColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0),
                    )),
                child: Column(
                  children: [
                    SizedBox(height: 25.0),
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      margin: EdgeInsets.symmetric(horizontal: 18.0),
                      decoration: BoxDecoration(
                        color: kGreyAccentColor,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage("assets/corona.png"),
                          ),
                          title: Text("Coronavirus test", style: kTitleStyle),
                          subtitle: Text(
                            "Take the test, and follow whether you are positive or not.",
                            style: kSubtitleStyle,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FabButton(
                            color: kPurpleColor,
                            icon: FontAwesomeIcons.broadcastTower,
                            title: "News",
                          ),
                          FabButton(
                            color: kRedColor,
                            icon: FontAwesomeIcons.stethoscope,
                            title: "News",
                          ),
                          FabButton(
                            color: kAmberColor,
                            icon: FontAwesomeIcons.bookMedical,
                            title: "News",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Training videos", style: kTitleStyle),
                          Row(
                            children: [
                              Text("More",
                                  style: kTitleStyle.copyWith(
                                      color: Colors.black45)),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.black45),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      width: double.infinity,
                      height: 120.0,
                      margin: EdgeInsets.symmetric(horizontal: 18.0),
                      decoration: BoxDecoration(
                        color: kGreyAccentColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 120.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: kGreyAccentColor, blurRadius: 5.0),
                              ],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/doctor.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Text("Safety and Health Topics",
                                      style: kTitleStyle),
                                  Spacer(),
                                  Text(
                                    "Read COVID-19 related articles, and how to prevent them.",
                                    style: kSubtitleStyle,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Coronavirus cases",
                          style: kTitleStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18.0),
                      child: CoronaVirusChart(),
                    ),
                    SizedBox(height: 50.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
