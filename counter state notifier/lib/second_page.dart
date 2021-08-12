import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statenotifier/state_notifier.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<Counter>().reset();
        },
        tooltip: 'Reset',
        child: const Icon(Icons.restart_alt),
      ),
      body: Center(
        child: Text(
          context.watch<int>().toString(),
          style: const TextStyle(fontSize: 60),
        ),
      ),
    );
  }
}
