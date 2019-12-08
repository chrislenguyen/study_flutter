import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> listOfTransactions;

  TransactionList({this.listOfTransactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: listOfTransactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No Transaction',
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 20,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    height: 500,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 5,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Theme.of(context).primaryColorDark,
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: FittedBox(
                          child: Text(
                            '${listOfTransactions[index].amount}K',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      listOfTransactions[index].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                      DateFormat('dd MMMM yyyy')
                          .format(listOfTransactions[index].date),
                    ),
                  ),
                );
              },
              itemCount: listOfTransactions.length,
            ),
    );
  }
}
