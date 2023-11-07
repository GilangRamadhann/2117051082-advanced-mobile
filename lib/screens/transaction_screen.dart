import 'package:flutter/material.dart';
import 'package:mola/models/transaction_model.dart';
import 'package:intl/intl.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  List<TransactionModel> data = [
    TransactionModel(
      TransactionIcons: Icons.add,
      TransactionCategory: 'Top Up',
      TransactionDate: 'Oct 11',
      TransactionOperator: '+',
      TransactionAmount: 100000,
    ),
    TransactionModel(
      TransactionIcons: Icons.splitscreen,
      TransactionCategory: 'Split',
      TransactionDate: 'Oct 9',
      TransactionOperator: '-',
      TransactionAmount: 700000,
    ),
    TransactionModel(
      TransactionIcons: Icons.payments,
      TransactionCategory: 'Withdraw',
      TransactionDate: 'Sep 30',
      TransactionOperator: '-',
      TransactionAmount: 200000,
    ),
    TransactionModel(
      TransactionIcons: Icons.call_received,
      TransactionCategory: 'Receive',
      TransactionDate: 'Aug 12',
      TransactionOperator: '+',
      TransactionAmount: 200000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FB),
      appBar: AppBar(
        title: Text(
          "History",
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: FutureBuilder(
        future: Future.delayed(Duration(seconds: 1)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return RefreshIndicator(
              onRefresh: () {
                return Future.delayed(
                  Duration(seconds: 3),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: data[index].TransactionOperator == "-"
                                      ? Color(0xFFFFE0EF)
                                      : Color(0xFFE5F7EE),
                                ),
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(data[index].TransactionIcons),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index].TransactionCategory!,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  data[index].TransactionDate!,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "" +
                                  data[index].TransactionOperator! +
                                  "" +
                                  NumberFormat.currency(locale: "id")
                                      .format(data[index].TransactionAmount)
                                      .toString(),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )),
    );
  }
}
