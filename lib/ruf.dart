import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  var button = [
    true,
    false,
    false,
    false,
    false,
    false,
  ];
  var button2 = [
    true,
    true,
    true,
    true,
    true,
    true,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: ListView.builder(
        itemCount: button.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.red,
              )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      button[index] = !button[index];
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: button[index] == true
                              ? Colors.green
                              : Colors.black,
                        )),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
