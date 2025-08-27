import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/presentation/widget/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expense, required this.onRemoveExpense});
  final void Function(Expense expense) onRemoveExpense;
  final List<Expense> expense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expense[index]),
        onDismissed: (direction) => onRemoveExpense(expense[index]) ,
        child: ExpenseItem(expense: expense[index]),
      ),
    );
  }
}
