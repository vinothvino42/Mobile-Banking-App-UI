import 'package:flutter/material.dart';

class Transaction {
  Transaction({
    @required this.title,
    @required this.dateTime,
    @required this.icon,
    @required this.amount,
  });

  final String title;
  final String dateTime;
  final IconData icon;
  final String amount;

  static List<Transaction> getRecentTransactions() {
    List<Transaction> recentTransactions = [
      Transaction(title: 'Apple Music', dateTime: '23 Feb, 8:36 PM', icon: Icons.library_music, amount: '-\$25'),
      Transaction(title: 'Grocery', dateTime: '22 Feb, 10:12 PM', icon: Icons.local_grocery_store, amount: '-\$52'),
      Transaction(title: 'From: Best friend', dateTime: '22 Feb, 9:45 AM', icon: Icons.account_balance_wallet, amount: '\$100'),
      Transaction(title: 'Netflix', dateTime: '30 Mar, 8:36 PM', icon: Icons.movie, amount: '\$42'),
      Transaction(title: 'Adidas Shoes', dateTime: '11 Apr, 4:26 PM', icon: Icons.shopping_basket, amount: '-\$66'),
      Transaction(title: 'RADO Watch', dateTime: '5 Sep, 3:55 AM', icon: Icons.watch, amount: '\$14'),
    ];
    return recentTransactions;
  }
}