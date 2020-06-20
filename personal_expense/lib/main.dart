import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 34.54,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 12.12,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART!'),
                // child: Container(
                //   child: Text('CHART!'),
                //   width: double.infinity,
                // ),
                elevation: 5,
              ),
            ),
            Column(
              children: transactions
                  .map((tx) => Card(
                        child: Text(tx.title),
                      ))
                  .toList(),
            )
            // Card(
            //   color: Colors.yellow,
            //   child: Text('LIST OF TX'),
            // )
          ],
        ));
  }
}
