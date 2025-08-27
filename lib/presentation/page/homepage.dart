import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/presentation/widget/expense_list.dart';
import 'package:expense_tracker/presentation/widget/new_expense.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Expense> registerExpense = [
    Expense(
      title: 'Dinner',
      amount: 12.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'SiemReap',
      amount: 123.99,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return NewExpense(onAddExpense: _addExpense);
      },
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      registerExpense.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final lastIndex = registerExpense.indexOf(expense);
    setState(() {
      registerExpense.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Expense deleted."),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              registerExpense.insert(lastIndex, expense);
            });
          },
        ),
      ),
      
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text('No expenses was founded. start adding some!'),
    );
    if (registerExpense.isNotEmpty) {
      mainContent = ExpenseList(
        expense: registerExpense,
        onRemoveExpense: _removeExpense,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Trakcer'),
        actions: [
          IconButton(onPressed: _openAddExpenseOverlay, icon: Icon(Icons.add)),
        ],
      ),
      body: Column(children: [Expanded(child: mainContent)]),
    );
  }
}
