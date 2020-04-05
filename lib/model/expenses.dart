import 'package:flutter/material.dart';

class Expenses {
  Expenses({
    @required this.title,
    @required this.icon,
    @required this.amount, 
  });

  final String title;
  final IconData icon;
  final String amount;

  static List<Expenses> getAllExpenses() {
    List<Expenses> expenses = [
      Expenses(title: 'Grocery', icon: Icons.local_grocery_store, amount: '\$340'),
      Expenses(title: 'Taxi', icon: Icons.local_taxi, amount: '\$289'),
      Expenses(title: 'Cafe', icon: Icons.local_cafe, amount: '\$567'),
      Expenses(title: 'Watch', icon: Icons.watch, amount: '\$240'),
      Expenses(title: 'Shoe', icon: Icons.shopping_basket, amount: '\$440'),
    ];
    return expenses;
  }
}