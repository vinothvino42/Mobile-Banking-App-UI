import 'package:flutter/material.dart';
import 'package:mobile_banking_neomorphism_app/utilities/decorations.dart';

class MyCardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'My Cards',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text('••••', style: TextStyle(fontSize: 17.0, color: Colors.blueGrey[300]),),
                      SizedBox(width: 8.0,),
                      Text('4821', style: TextStyle(fontSize: 16.0,  fontWeight: FontWeight.w600, color: Colors.blueGrey[300]),),
                      Spacer(),
                      Text('VISA', style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.blueGrey[200]),)
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Balance', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.blueGrey[200]),),
                      SizedBox(height: 5.0,),
                      Text('\$5132', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(8, 16),
                    color: Colors.black12,
                    blurRadius: 6,
                  ),
                  BoxShadow(
                    offset: Offset(-2, -3),
                    color: Colors.white,
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildIndicator(isCurrentPage: true),
              SizedBox(width: 10.0),
              _buildIndicator(),
              SizedBox(width: 10.0),
              _buildIndicator()
            ],
          ),
        ],
      ),
    );
  }

  Container _buildIndicator({bool isCurrentPage = false}) => Container(
        height: 4.0,
        width: isCurrentPage ? 22.0 : 10.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: isCurrentPage ? Colors.grey : Colors.grey[400],
        ),
      );
}
