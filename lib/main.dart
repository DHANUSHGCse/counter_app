import 'package:flutter/material.dart';

void main() {

  runApp(CounterApp());
}
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  int counter = 0;
  Widget build(BuildContext context) {
    void update_counter(){
      setState(() {
        counter+=1;
      });
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          ),
          title: Text(
              "Counter App"
          ),
        ),
        body: Center(child: Text(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 100.0,
          ),
            counter.toString())),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.blueAccent,
          onPressed: update_counter,

        ),
      ),

    );
  }
}