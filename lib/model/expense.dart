import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final uuid = Uuid();
final formater = DateFormat.yMd();

enum Category { food, leisure, work, travel }

const categoryIcon = {
  Category.food: Icons.lunch_dining,
  Category.leisure: Icons.timer,
  Category.work: Icons.work,
  Category.travel: Icons.flight_takeoff_outlined,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formater.format(date);
  }
}
