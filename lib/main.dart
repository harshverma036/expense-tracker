import 'package:expensetracker/widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expense Tracker App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            elevation: 5,
            margin: EdgeInsets.all(10.0),
            child: Text('CHART!'),
          ),
          UserTransaction()
        ],
      ),
    );
  }
}
