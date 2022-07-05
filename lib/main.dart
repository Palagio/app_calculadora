import 'package:flutter/material.dart';

import 'button_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 32.0, right: 32.0, top: 20, bottom: 50),
              child: Container(
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.black),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                width: 450,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          '55+26',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ButtonCalculator(
                label: '7',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '8',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '9',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '/',
                onPressed: () {},
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ButtonCalculator(
                label: '4',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '5',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '6',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '*',
                onPressed: () {},
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ButtonCalculator(
                label: '1',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '2',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '3',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '-',
                onPressed: () {},
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              ButtonCalculator(
                label: 'C',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '0',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '=',
                onPressed: () {},
              ),
              ButtonCalculator(
                label: '+',
                onPressed: () {},
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
