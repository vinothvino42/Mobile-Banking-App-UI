
import 'package:flutter/foundation.dart';

class Chart {
  Chart({
    @required this.title,
    @required this.height,
  });

  final String title;
  final double height;

  static List<Chart> getCharts() {
    List<Chart> recentTransactions = [
      Chart(title: 'Oct', height: 140.0),
      Chart(title: 'Nov', height: 60.0),
      Chart(title: 'Dec', height: 180.0),
      Chart(title: 'Jan', height: 130.0),
      Chart(title: 'Feb', height: 40.0),
      Chart(title: 'Mar', height: 0.0)
    ];
    return recentTransactions;
  }
}