import 'package:flutter/material.dart';
import 'package:spend_wise/widgets/expense_item.dart';

import 'models/expense.dart';

class SpendWiseHome extends StatefulWidget {
  const SpendWiseHome({super.key});

  @override
  State<SpendWiseHome> createState() {
    return _SpendWiseHomeState();
  }
}

class _SpendWiseHomeState extends State<SpendWiseHome> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spend Wise'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add))
      ],),
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
