import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/ex1/viewModel/user_info_notifier.dart';

class UserInfoConfirm extends StatelessWidget {
  const UserInfoConfirm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ユーザ情報確認')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Consumer(
            builder: (context, ref, _) {
              final userInfoModel = ref.watch(userInfoProvider);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('名前', textScaleFactor: 2),
                  Text(userInfoModel.name, textScaleFactor: 1.5),
                  const SizedBox(height: 20),
                  const Text('名前(カナ)', textScaleFactor: 2),
                  Text(userInfoModel.nameKana, textScaleFactor: 1.5),
                  const SizedBox(height: 20),
                  const Text('メールアドレス', textScaleFactor: 2),
                  Text(userInfoModel.mail, textScaleFactor: 1.5),
                  const SizedBox(height: 20),
                  const Text('電話番号', textScaleFactor: 2),
                  Text(userInfoModel.telNum, textScaleFactor: 1.5),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
