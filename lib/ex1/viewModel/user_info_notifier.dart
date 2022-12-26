import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/user_info_model.dart';

class UserInfoNotifier extends StateNotifier<UserInfoModel> {
  // 初期値の指定
  UserInfoNotifier() : super(const UserInfoModel()) {
    // 初期値を入れるのは最初の一回だけ
    initialize();
  }

  late TextEditingController nameInputController;
  late TextEditingController nameKanaInputController;
  late TextEditingController mailInputController;
  late TextEditingController telNumInputController;

  void initialize() {
    nameInputController = TextEditingController(text: state.name);
    nameKanaInputController = TextEditingController(text: state.nameKana);
    mailInputController = TextEditingController(text: state.mail);
    telNumInputController = TextEditingController(text: state.telNum);
  }

  // 各TextField値の状態更新処理
  void inputName(String newName) async {
    state = state.copyWith(name: newName);
  }

  void inputNameKana(String newNameKana) async {
    state = state.copyWith(nameKana: newNameKana);
  }

  void inputMail(String newMail) async {
    state = state.copyWith(mail: newMail);
  }

  void inputTelNum(String newTelNum) async {
    state = state.copyWith(telNum: newTelNum);
  }

  // Viewに各TextFieldのControllerを返す
  TextEditingController getController(int ctlNum) {
    switch (ctlNum) {
      case 1:
        return nameInputController;
      case 2:
        return nameKanaInputController;
      case 3:
        return mailInputController;
      case 4:
        return telNumInputController;
      default:
        return nameInputController;
    }
  }

  // TextField変更時の値保存処理
  void onChangeTextField(int ctlNum, String newValue) {
    switch (ctlNum) {
      case 1:
        inputName(newValue);
        break;
      case 2:
        inputNameKana(newValue);
        break;
      case 3:
        inputMail(newValue);
        break;
      case 4:
        inputTelNum(newValue);
        break;
      default:
        break;
    }
  }
}

// UserInfoNotifierの状態を管理する
final userInfoProvider = StateNotifierProvider<UserInfoNotifier, UserInfoModel>(
  (ref) => UserInfoNotifier(),
);
