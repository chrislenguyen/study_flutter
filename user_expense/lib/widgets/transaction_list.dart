import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transaction_item.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> listOfTransactions;
  final Function deleteTx;

  TransactionList({this.listOfTransactions, this.deleteTx});

  @override
  Widget build(BuildContext context) {
    return listOfTransactions.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: <Widget>[
                Text(
                  'No Transaction',
                  style: Theme.of(context).textTheme.title,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: constraints.maxHeight * 0.6,
                  child: Image.asset(
                    'assets/images/waiting.png',
                  ),
                ),
              ],
            );
          })
        : ListView.builder(
            itemBuilder: (context, index) {
              return TransactionItem(
                transaction: listOfTransactions[index],
                deleteTx: deleteTx,
              );
            },
            itemCount: listOfTransactions.length,
          );
  }
}


