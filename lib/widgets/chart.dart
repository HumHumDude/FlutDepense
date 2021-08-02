import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class Chart extends StatelessWidget {
  // list of transactions of the past 7 days
  final List<Transaction> recentTransactions;
  Chart(this.recentTransactions);
  //list of maps, that have keys that are strings and in the keys objects which is multiple type values
  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      //RETURNING A MAP
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0.0;
      for (var i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].date.day == weekDay.day &&
            recentTransactions[i].date.month == weekDay.month &&
            recentTransactions[i].date.year == weekDay.year) {
          totalSum += recentTransactions[i].amount;
        }
      }
      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6,
        margin: EdgeInsets.all(20),
        child: Row(
          children: groupedTransactionValues.map((data) {
            return Text(
              '${data['day']}: ${data['amount']}'.toString(),
            );
          }).toList(),
        ));
  }
}
