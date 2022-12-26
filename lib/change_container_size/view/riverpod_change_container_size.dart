import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/change_container_size/viewModel/container_info_notifier.dart';

import '../../countup/riverpod_my_home_page.dart';

class RiverpodhangeContainerSize extends ConsumerWidget {
  const RiverpodhangeContainerSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerInfoModel = ref.watch(containerInfoProvider);
    final containerInfoNotifier = ref.watch(containerInfoProvider.notifier);
    int _counter = ref.watch(counutUpProvider);
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
                Text(_counter.toString()),
                Expanded(child: Container()),
                Container(
                  width: containerInfoModel.width,
                  height: containerInfoModel.height,
                  color: Colors.indigo,
                ),
                Expanded(child: Container()),
                Row(
                  children: [
                    Text('width  ${containerInfoModel.width.toStringAsFixed(0)}'),
                    Flexible(
                      child: Slider(
                        min: 1,
                        max: 300,
                        value: containerInfoModel.width,
                        onChanged: (value) {
                          containerInfoNotifier.changeWidth(value);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text('height  ${containerInfoModel.height.toStringAsFixed(0)}'),
                    Flexible(
                      child: Slider(
                        min: 1,
                        max: 300,
                        value: containerInfoModel.height,
                        onChanged: (value) {
                          containerInfoNotifier.changeHeight(value);
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
          ref.refresh(containerInfoProvider);
        },
        backgroundColor: Colors.pinkAccent,
        child: const Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
