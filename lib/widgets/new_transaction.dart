import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final themeColor = Colors.blue;
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enterdTitle = titleController.text;
    final enterdAmount = double.parse(amountController.text);

    if (enterdTitle.isEmpty || enterdAmount <= 0) {
      return;
    }

    addTx(
      enterdTitle,
      enterdAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: themeColor,
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
