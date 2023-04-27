import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  void onPressed() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Click Count",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            for (var value in numbers) Text('$value'),
            IconButton(
              iconSize: 40,
              onPressed: onPressed,
              icon: const Icon(Icons.add_box_outlined),
            ),
          ],
        ),
      ),
    ));
  }
}
