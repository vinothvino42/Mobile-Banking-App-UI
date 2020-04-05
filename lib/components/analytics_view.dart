import 'package:flutter/material.dart';
import 'package:mobile_banking_neomorphism_app/utilities/decorations.dart';

class AnalyticsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
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
          SizedBox(height: 30.0),
          Row(
            children: <Widget>[
              Container(
                decoration: getBoxDecoration(context, isPressed: true),
                padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 22.0),
                child: Center(
                  child: Text('Expenses', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
