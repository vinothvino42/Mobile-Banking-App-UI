import 'package:flutter/material.dart';
import 'package:mobile_banking_neomorphism_app/components/analytics_view.dart';
import 'package:mobile_banking_neomorphism_app/components/expenses_view.dart';
import 'package:mobile_banking_neomorphism_app/utilities/decorations.dart';

class AnalyticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: _buildAppNavBar(context),
            ),
            Expanded(
              child: AnalyticsView(),
            ),
            ExpensesView(),
          ],
        ),
      ),
    );
  }

  Row _buildAppNavBar(BuildContext context) => Row(
        children: <Widget>[
          InkWell(
            child: _buildAppBarButton(context, Icons.arrow_back_ios),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Spacer(),
          _buildAppBarButton(context, Icons.menu),
        ],
      );

  Container _buildAppBarButton(BuildContext context, IconData icon) =>
      Container(
        width: 40.0,
        height: 40.0,
        child: Icon(icon, color: Colors.blueGrey[200],),
        decoration: getBoxDecoration(context, borderRadius: 8.0),
      );
}