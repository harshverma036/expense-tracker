import 'package:expensetracker/widgets/new_transaction.dart';
import 'package:expensetracker/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: "t1",
      title: 'New Shoes',
      amount: 88.98,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "New Tshirt",
      amount: 699.00,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final nTx = Transaction(
      id: DateTime.now.toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransaction.add(nTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NewTransaction(_addNewTransaction), TransactionList(_userTransaction)],
    );
  }
}
