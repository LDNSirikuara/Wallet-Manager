import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet Manager',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final themeColor = Colors.blue;

  // String titleInput;
  // String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manager'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: themeColor,
                child: Text('Chart!'),
                elevation: 20,
              ),
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
