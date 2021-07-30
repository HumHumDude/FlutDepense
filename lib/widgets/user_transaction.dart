import 'package:flutter/material.dart';
import './transaction_list.dart';
import './new_transaction.dart';
import '../models/transaction.dart';

class userTransactions extends StatefulWidget {
  @override
  _userTransactionsState createState() => _userTransactionsState();
}

class _userTransactionsState extends State<userTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 18.22,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Gym Membership',
      amount: 40.01,
      date: DateTime.now(),
    ),
  ];
  // ignore: unused_element
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
