import 'package:flutter/material.dart';

class TransactionModel {
  IconData TransactionIcons;
  String? TransactionCategory;
  String? TransactionDate;
  String? TransactionOperator;
  double? TransactionAmount;

  TransactionModel({
    required this.TransactionIcons,
    this.TransactionCategory,
    this.TransactionDate,
    this.TransactionOperator,
    this.TransactionAmount,
  });
}