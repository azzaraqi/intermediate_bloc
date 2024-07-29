import 'counter_bloc.dart';
import 'package:flutter/material.dart';
import 'counter_provider.dart';

void main() {
  runApp(const MaterialApp(home: IntrmediateCourse()));
}

class IntrmediateCourse extends StatefulWidget {
  const IntrmediateCourse({super.key});
  @override
  State<IntrmediateCourse> createState() => _IntrmediateCourseState();
}

class _IntrmediateCourseState extends State<IntrmediateCourse> {
  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Pattern Demo"),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 14),
        backgroundColor: Colors.green,
      ),
      body: StreamBuilder(
        stream: bloc.getCount,
        initialData: CounterProvider().count,
        builder: (context, snapshot) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: bloc.updateCount,
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
    );
  }
}
