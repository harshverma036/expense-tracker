import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 11.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'TItle',
                ),
                controller: titleController,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Amount',
              ),
              controller: amountController,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
              ),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  print(titleController.text);
                  print(amountController.text);
                  addNewTransaction(titleController.text, double.parse(amountController.text));
                },
                child: Text("Add Transaction".toUpperCase()),
                // style: ButtonStyle(maximumSize: Size)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
