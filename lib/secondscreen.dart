import 'package:flutter/material.dart';
import 'package:useprovider/provider.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<Counter>().reset();
        },
        tooltip: 'Reset',
        child: Icon(Icons.restart_alt),
      ),
      body: Container(
        child: Center(
          child: Text(
            'You have pushed the button this many times:  ${context.watch<Counter>().count}',
          ),
        ),
      ),
    );
  }
}
