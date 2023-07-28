import 'dart:math';

import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({Key? key}) : super(key: key);

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  double _curr = 1;
  int curr = 0;
  String groupValue = "";
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _deincrementCounter() {
    setState(() {
      _counter = max(_counter - 1, 0);
    });
  }

  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter <= 0) {
      return;
    }
    setState(() {
      counter = counter - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text("Bmindex"),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color(0xFF0A0C21),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              SelectionView(
                onTap: () {
                  setState(() {
                    groupValue = "Male";
                  });
                },
                groupValue: groupValue,
                title: "Male",
                icon: Icons.male,
              ),
              const SizedBox(width: 10),
              SelectionView(
                onTap: () {
                  setState(() {
                    groupValue = "Female";
                  });
                },
                groupValue: groupValue,
                title: "Female",
                icon: Icons.female,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            width: 310,
            decoration: BoxDecoration(
                color: const Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 0.5,
                    offset: Offset(0.0, 0.0),
                  )
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "height",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_curr.toInt().toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30)),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "cm",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Slider(
                    value: (_curr),
                    min: 0,
                    max: 300,
                    activeColor: const Color(0xFFd61651),
                    onChanged: (value) {
                      setState(() {
                        _curr = value;
                      });
                    })
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Container(
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 0.5,
                        offset: Offset(0.0, 0.0),
                      )
                    ]),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    const Text(
                      "weight",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$counter',
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        FloatingActionButton.small(
                          onPressed: decrementCounter,
                          backgroundColor: const Color(0xFF4c4f5e),
                          child: const Text("-",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ),
                        FloatingActionButton.small(
                          onPressed: incrementCounter,
                          backgroundColor: const Color(0xFF4c4f5e),
                          child:
                              const Text("+", style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 180,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color(0xFF1D1E33),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 0.5,
                        offset: Offset(0.0, 0.0),
                      )
                    ]),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 32,
                    ),
                    const Text(
                      "age",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$_counter',
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 25,
                        ),
                        FloatingActionButton.small(
                          onPressed: _deincrementCounter,
                          backgroundColor: const Color(0xFF4c4f5e),
                          child: const Text("-",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ),
                        FloatingActionButton.small(
                          onPressed: _incrementCounter,
                          backgroundColor: const Color(0xFF4c4f5e),
                          child:
                              const Text("+", style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFd61651),
                  fixedSize: const Size(310, 50)),
              child: const Text("Calculate"))
        ],
      ),
    );
  }
}

class SelectionView extends StatelessWidget {
  final VoidCallback onTap;
  final String groupValue;
  final String title;
  final IconData icon;

  const SelectionView({
    Key? key,
    required this.onTap,
    required this.groupValue,
    required this.title,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            color: groupValue == title
                ? const Color(0xFFd61651)
                : const Color(0xFF1D1E33),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 0.5,
                offset: Offset(0.0, 0.0),
              )
            ]),
        child: Column(
          children: [
            const SizedBox(height: 55),
            Icon(icon, color: Colors.white, size: 50),
            Text(
              title,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
