import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:coronavirusapp/constants.dart';

class CoronaVirusChart extends StatefulWidget {
  @override
  _CoronaVirusChartState createState() => _CoronaVirusChartState();
}

class _CoronaVirusChartState extends State<CoronaVirusChart> {
  List<Color> gradientColors = [kPurpleColor, kRedColor];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: kGreyAccentColor,
              boxShadow: [
                BoxShadow(color: kGreyAccentColor, blurRadius: 5.0),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.0, 24.0, 18.0, 12.0),
              child: LineChart(
                mainData(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(color: Color(0xff37434d), strokeWidth: 1);
        },
        getDrawingVerticalLine: (value) {
          return FlLine(color: Color(0xff37434d), strokeWidth: 1);
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22.0,
          textStyle: kTitleStyle.copyWith(
            color: Color(0xFF68737D),
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return "Jan";
              case 5:
                return "Feb";
              case 8:
                return "Mar";
            }
            return "";
          },
          margin: 8.0,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: kTitleStyle.copyWith(
            color: Color(0xFF67727D),
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return "10k";
              case 3:
                return "30k";
              case 5:
                return "50k";
            }
            return "";
          },
          reservedSize: 28.0,
          margin: 12.0,
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border.all(
          color: Color(0xFF37434D),
          width: 1.0,
        ),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2.6, 2),
            FlSpot(4.9, 5),
            FlSpot(6.8, 3.1),
            FlSpot(8, 4),
            FlSpot(9.5, 3),
            FlSpot(11, 3),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5.0,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((e) => e.withOpacity(0.3)).toList(),
          ),
        ),
      ],
    );
  }
}
