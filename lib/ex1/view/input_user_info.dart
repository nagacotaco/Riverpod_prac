import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/ex1/viewModel/user_info_notifier.dart';

import 'user_info_confirm.dart';

class InputUserInfoPage extends ConsumerWidget {
  InputUserInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザ情報入力'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const InputWidget(title: '名前', widgetNum: 1),
                const InputWidget(title: 'カナ', widgetNum: 2),
                const InputWidget(title: 'メールアドレス', widgetNum: 3),
                const InputWidget(title: '電話番号', widgetNum: 4),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => const UserInfoConfirm()));
                  },
                  child: const Text('確認画面へ'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputWidget extends ConsumerWidget {
  const InputWidget({
    Key? key,
    required this.widgetNum,
    required this.title,
  }) : super(key: key);

  final int widgetNum;
  final title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInfoNotifier = ref.watch(userInfoProvider.notifier);
    TextEditingController textEditingController = userInfoNotifier.getController(widgetNum);
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        maxLines: 1,
        decoration: InputDecoration(
          hintText: title,
          border: InputBorder.none,
        ),
        controller: textEditingController,
        onChanged: (value) {
          userInfoNotifier.onChangeTextField(widgetNum, value);
        },
      ),
    );
  }
}
