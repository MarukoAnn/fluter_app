import 'package:fluter_app/test/statelessWidget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp(
      items: List<String>.generate(100, (i) => "Item $i"),
    ));

class MyApp extends StatefulWidget {
  final List<String> items;
  const MyApp({super.key, required this.items});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var items;
    print(context);
    return MaterialApp(
      title: 'List Widget',
      home: Scaffold(
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
