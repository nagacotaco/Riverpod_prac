import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StatefulChangeContainerSize extends StatefulWidget {
  const StatefulChangeContainerSize({Key? key}) : super(key: key);

  @override
  State<StatefulChangeContainerSize> createState() => _StatefulChangeContainerSizeState();
}

class _StatefulChangeContainerSizeState extends State<StatefulChangeContainerSize> {
  double width = 100.0;
  double height = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('(S)ChangeContainerSize'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Container()),
                Container(
                  width: width,
                  height: height,
                  color: Colors.indigo,
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    Text('width  ${width.toStringAsFixed(0)}'),
                    Flexible(
                      child: Slider(
                        min: 1,
                        max: 300,
                        value: width,
                        onChanged: (value) {
                          setState(() {
                            width = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('height  ${height.toStringAsFixed(0)}'),
                    Flexible(
                      child: Slider(
                        min: 1,
                        max: 300,
                        value: height,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            width = 100;
            height = 100;
          });
        },
        backgroundColor: Colors.pinkAccent,
        child: const Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
