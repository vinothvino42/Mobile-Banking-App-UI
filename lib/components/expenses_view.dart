import 'package:flutter/material.dart';
import 'package:mobile_banking_neomorphism_app/model/expenses.dart';
import 'package:mobile_banking_neomorphism_app/utilities/decorations.dart';

class ExpensesView extends StatelessWidget {
  final List<Expenses> expenses = Expenses.getAllExpenses();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      height: 220.0,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Expenses this month',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5.0
                  ),
                  Text(
                    '\$235 less than last month',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey[200],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                '\$1432',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 10.0
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: expenses.length,
              itemBuilder: (context, index) => _buildCard(context, expenses[index]),
            ),
          )
        ],
      ),
    );
  }

  Container _buildCard(BuildContext context, Expenses expense) => Container(
        margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        alignment: Alignment.centerLeft,
        decoration: getBoxDecoration(context),
        width: 120.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(expense.icon, color: Colors.blueGrey[200],),
            SizedBox(height: 15.0),
            Text(
              expense.title,
              style: TextStyle(fontSize: 13.0, color: Colors.blueGrey[200]),
            ),
            SizedBox(height: 3.0),
            Text(
              expense.amount,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,),
            ),
          ],
        ),
      );
}
