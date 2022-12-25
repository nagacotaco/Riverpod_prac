import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod_practice/my_home_page.dart';

import 'change_container_size/statefull_change_container_size.dart';
import 'change_container_size/view/riverpod_change_container_size.dart';
import 'riverpod_my_home_page.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const MyHomePage(title: 'count')));
                },
                child: const Text('(S)CountUp'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const StatefulChangeContainerSize()));
                },
                child: const Text('(S)ChangeContainerSize'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const RiverpodhangeContainerSize()));
                },
                child: const Text('(R)ChangeContainerSize'),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => const RiverpodMyHomePage()));
                  },
                  child: const Text('(R)count'))
            ],
          ),
        ),
      ),
    );
  }
}
