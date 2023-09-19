import 'package:flutter/material.dart';
import 'package:third_app/widgets/expenses_list/expenses_list.dart';
import 'package:third_app/models/expense.dart';
import 'package:third_app/widgets/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter coursre',
        amount: 19.9,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 14.9,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'IT',
        amount: 10.9,
        date: DateTime.now(),
        category: Category.food),
  ];

  void _openAddExpenseOverlap() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ExpenseTracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlap,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          //Toolbar with the Add button => Row()
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
