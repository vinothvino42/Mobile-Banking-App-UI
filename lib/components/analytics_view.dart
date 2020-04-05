import 'package:flutter/material.dart';
import 'package:mobile_banking_neomorphism_app/model/chart.dart';
import 'package:mobile_banking_neomorphism_app/utilities/decorations.dart';
import 'package:mobile_banking_neomorphism_app/utilities/hex_color.dart';

class AnalyticsView extends StatelessWidget {
  final List<Chart> charts = Chart.getCharts();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Analytics',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: getBoxDecoration(context, borderRadius: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Year',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 23.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: getBoxDecoration(
                    context,
                    isPressed: true,
                    blurRadius: 1.0,
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 9.0, horizontal: 15.0),
                  child: Center(
                    child: Text(
                      'Expenses',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 9.0, horizontal: 15.0),
                  child: Center(
                    child: Text(
                      'Income',
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: _buildChart(context)),
        ],
      ),
    );
  }

  Container _buildChart(BuildContext context) => Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
          left: 10.0, top: 35.0, right: 10.0, bottom: 20.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: charts.length,
        itemBuilder: (context, index) => _buildBar(context, charts[index]),
      ));

  Container _buildBar(BuildContext context, Chart chart) => Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 22.0),
                decoration:
                    getBoxDecoration(context, isPressed: true, blurRadius: 2.0),
                width: 22.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 1.0),
                    height: chart.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: HexColor('#FF6A00'),
                      boxShadow: [
                        BoxShadow(color: Colors.orange, offset: Offset(-2, 0)),
                        BoxShadow(color: Colors.orange, offset: Offset(2, 0))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              chart.title,
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey[200]),
            ),
          ],
        ),
      );
}
